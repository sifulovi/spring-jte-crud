@param java.util.List<com.sio.springjtecrud.Todo> todos
@param com.sio.springjtecrud.Todo newTodo

@template.layout.main(
content = @`
<h2>Todo List</h2>

<!-- Add Todo Form -->
<form action="/" method="post" class="mb-4">
    <div class="row">
        <div class="col-md-4">
            <input type="text" name="title" class="form-control" placeholder="Title" required>
        </div>
        <div class="col-md-6">
            <input type="text" name="description" class="form-control" placeholder="Description">
        </div>
        <div class="col-md-2">
            <button type="submit" class="btn btn-primary w-100">Add Todo</button>
        </div>
    </div>
</form>

<!-- Todo List -->
<div class="list-group">
    @for(com.sio.springjtecrud.Todo todo : todos)
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <div class="d-flex align-items-center">
                <form action="/${todo.getId()}/toggle" method="post" style="margin-right: 1rem;">
                    <button type="submit" class="btn btn-sm ${todo.isCompleted() ? "btn-success" : "btn-outline-success"}">
                        ✓
                    </button>
                </form>
                <div>
                    <h5 class="mb-1 ${todo.isCompleted() ? "text-decoration-line-through" : ""}">${todo.getTitle()}</h5>
                    <small class="text-muted">${todo.getDescription()}</small>
                </div>
            </div>
            <div class="btn-group">
                <a href="/${todo.getId()}/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                <a href="/${todo.getId()}/delete" class="btn btn-sm btn-outline-danger"
                   onclick="return confirm('Are you sure?')">Delete</a>
            </div>
        </div>
    @endfor
</div>
`
)