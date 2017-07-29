class Incident extends React.Component {
  constructor(){
    super();
    this.state = {
      victims: [{
        id: 1,
        name: "Jasper"
      }, {
        id: 2,
        name: "Steve"
      }]
    }
  }

  renderVictims(){
    return this.state.victims.map((victim) => this.renderVictim(victim));
  }

  renderVictim(victim){
    return (
      <div key={this.props.id} className="victim-wrapper">
        <Victim id={victim.id} name={victim.name} />
      </div>
    )
  }

  render() {
    return (
      <div className="incident-container">
        <div className="incident-type">{this.props.type}</div>
        <div className="incident-desc">{this.props.desc}</div>
        <div className="incident-victims">
          {this.renderVictims()}
        </div>
      </div>
    );
  }
}
