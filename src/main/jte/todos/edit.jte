@import  com.sio.springjtecrud.Todo

@param Todo todo

@template.layout.main(
content = @`
<h2>Edit Todo</h2>
<form action="/${todo.getId()}" method="post">
    <div class="mb-3">
        <label class="form-label">Title</label>
        <input type="text" name="title" class="form-control" value="${todo.getTitle()}" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Description</label>
        <input type="text" name="description" class="form-control" value="${todo.getDescription()}">
    </div>
    <div class="mb-3">
        <div class="form-check">
            @if(todo.isCompleted())
                <input type="checkbox" name="completed" class="form-check-input" value="true" checked>
            @else
                <input type="checkbox" name="completed" class="form-check-input" value="true">
            @endif
            <label class="form-check-label">Completed</label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
    <a href="/" class="btn btn-secondary">Cancel</a>
</form>
`
))