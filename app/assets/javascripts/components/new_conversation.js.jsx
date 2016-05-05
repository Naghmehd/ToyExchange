var Newconversation = React.createClass({

    getInitialState: function () {
        return {
            opened: false,
            body: ''
        };
    },

    handleClick: function () {
       this.setState({
          opened: !this.state.opened
       });
    },

    handleBodyChange: function (event) {
        this.setState({
           body: event.target.value
        });
    },

    handleSubmit: function () {
        $.ajax({
          method: "conversation",
          data: {
            conversation: {
              body: this.state.body
            }
          }
        }).done(function (response) {
            this.handleClick();
        }.bind(this));
    },

    renderBody: function () {
        if (this.state.opened === true) {
            return (
                  <div>
                      <Ticker />
                      <div className="form-group">
                        <label htmlFor="conversation_body">Body</label>
                        <textarea className="form-control" onChange={this.handleBodyChange} value={this.state.body} />
                      </div>
                      <div className="actions">
                        <input type="submit" name="commit" value="Create conversation" className="btn btn-primary" onClick={this.handleSubmit}/>
                      </div>
                  </div>
          );
        }

    },

    render: function() {
        return (
          <div>
              <div className='btn btn-primary' onClick={this.handleClick}>New conversation</div>
              {this.renderBody()}
          </div>
        );
   }
});
