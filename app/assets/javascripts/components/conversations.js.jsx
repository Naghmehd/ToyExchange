var conversations = React.createClass({
  propTypes: {
    conversations: React.PropTypes.array
  },

  render: function() {
    return (
      <div>
          conversations: {this.props.conversations.map(function (conversation) {
              return (<conversation body={conversation.body} />)
          })}
      </div>
    );
  }
});
