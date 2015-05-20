<div class = "forminfo">
  <h1>Edit Response</h1>
  <%= form_for [@question, @response], url: {action: "update"} do |f| %>

    <%= f.hidden_field :question_id, {value:@question.id } %>
    <%= f.hidden_field :user_id, {value:current_user.id} %>

    <div class = "spacer">
    <%= f.text_area :body, :size=>"52x6" %>
    </div>

    <%= f.submit %>
  <% end %>
</div>
