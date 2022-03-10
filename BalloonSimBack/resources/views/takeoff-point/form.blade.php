<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('name') }}
            {{ Form::text('name', $takeoffPoint->name, ['class' => 'form-control' . ($errors->has('name') ? ' is-invalid' : ''), 'placeholder' => 'Name']) }}
            {!! $errors->first('name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('description') }}
            {{ Form::text('description', $takeoffPoint->description, ['class' => 'form-control' . ($errors->has('description') ? ' is-invalid' : ''), 'placeholder' => 'Description']) }}
            {!! $errors->first('description', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('x') }}
            {{ Form::text('x', $takeoffPoint->x, ['class' => 'form-control' . ($errors->has('x') ? ' is-invalid' : ''), 'placeholder' => 'X']) }}
            {!! $errors->first('x', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('z') }}
            {{ Form::text('z', $takeoffPoint->z, ['class' => 'form-control' . ($errors->has('z') ? ' is-invalid' : ''), 'placeholder' => 'Z']) }}
            {!! $errors->first('z', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('y') }}
            {{ Form::text('y', $takeoffPoint->y, ['class' => 'form-control' . ($errors->has('y') ? ' is-invalid' : ''), 'placeholder' => 'Y']) }}
            {!! $errors->first('y', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('lat') }}
            {{ Form::text('lat', $takeoffPoint->lat, ['class' => 'form-control' . ($errors->has('lat') ? ' is-invalid' : ''), 'placeholder' => 'Latitude']) }}
            {!! $errors->first('lat', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('lon') }}
            {{ Form::text('lon', $takeoffPoint->lon, ['class' => 'form-control' . ($errors->has('lon') ? ' is-invalid' : ''), 'placeholder' => 'Longitude']) }}
            {!! $errors->first('lon', '<div class="invalid-feedback">:message</div>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>