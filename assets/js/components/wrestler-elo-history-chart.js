import React from "react";
import PropTypes from "prop-types";
import {
  VictoryAxis,
  VictoryChart,
  VictoryGroup,
  VictoryLine,
  VictoryScatter,
  VictoryTheme,
  VictoryTooltip
} from "victory";

class WrestlerEloHistoryChart extends React.Component {
  constructor(props) {
    super(props);

    this.getDomainsFromHistory = wrestlerEloHistories => {
      const allData = wrestlerEloHistories.map(d => d.elos);

      const allDates = [].concat(...allData).map(d => d.x);
      const allElos = [].concat(...allData).map(d => d.y);

      return {
        minDate: new Date(Math.min(...allDates)),
        maxDate: new Date(Math.max(...allDates)),
        minElo: Math.min(...allElos),
        maxElo: Math.max(...allElos)
      };
    };
  }

  render() {
    const { wrestlerEloHistories, colours } = this.props;

    const dataExtrema = this.getDomainsFromHistory(wrestlerEloHistories);

    const domain = {
      x: [
        new Date(
          dataExtrema.minDate.getFullYear(),
          dataExtrema.minDate.getMonth(),
          1
        ),
        new Date(
          dataExtrema.maxDate.getFullYear(),
          dataExtrema.maxDate.getMonth() + 1,
          1
        )
      ],
      y: [
        Math.floor(dataExtrema.minElo / 50) * 50,
        Math.ceil(dataExtrema.maxElo / 50) * 50
      ]
    };

    return (
      <VictoryChart
        scale={{ x: "time" }}
        height={450}
        width={1500}
        theme={VictoryTheme.material}
        domain={domain}
      >
        <VictoryAxis label={"Date"} />
        <VictoryAxis dependentAxis label={"Elo"} />
        <VictoryLine
          data={[{ x: domain.x[0], y: 1200 }, { x: domain.x[1], y: 1200 }]}
          style={{ data: { stroke: "grey", strokeWidth: 1 } }}
        />
        {wrestlerEloHistories.map((wrestlerEloHistory, index) => (
          <VictoryGroup
            color={colours[index]}
            key={index}
            labels={d => `Elo: ${d.y}`}
            labelComponent={<VictoryTooltip style={{ fontSize: 10 }} />}
            data={wrestlerEloHistory.elos}
          >
            <VictoryLine />
            <VictoryScatter />
          </VictoryGroup>
        ))}
      </VictoryChart>
    );
  }
}

WrestlerEloHistoryChart.propTypes = {
  wrestlerEloHistories: PropTypes.array, // Define better in future
  colours: PropTypes.arrayOf(PropTypes.string)
};

export default WrestlerEloHistoryChart;
