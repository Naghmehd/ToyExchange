var conversation = React.createClass({
  propTypes: {
    body: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Body: {this.props.body}</div>
      </div>
    );
  }
});
