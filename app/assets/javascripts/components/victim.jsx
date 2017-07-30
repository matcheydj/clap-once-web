const rapidClient = Rapid.createClient('NDA1OWE0MWo1b3AzOThmLnJhcGlkLmlv');
rapidClient.authorize('4059a41j5op398e');
const coVictims = rapidClient.collection('clap-once');

class Victim extends React.Component {
  constructor(props){
    super(props);

    this.state = {
    }
    coVictims
      .filter({
        and: [
          {user_id: this.props.id},
          {incident_id: this.props.incident_id}
        ]
      })
      .fetch((data) => {
        if(data.length == 1) {
          coVictims
          .document(data[0].id)
          .subscribe((changes) => {
            this.setState({
              status: changes.body.status
            })
          })
        }
      });
  }

  render() {
    return (
      <div className="victim-info">
        <div className="victim-name">{this.props.name}</div>
        <div className="victim-status-wrapper">
          <div data-status={this.state.status} className="victim-status">{this.state.status}</div>
        </div>
      </div>
    )
  }
}
