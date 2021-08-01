create or replace function fnc_devuelve_empleados()
returns setof empleados_type
language plpgsql
as $function$
declare 

valida integer;
registro RECORD;
rec empleados_type; 


cursor_tablas cursor is 
select * from empleado;

	begin 
	
		open cursor_tablas;
		fetch cursor_tablas into registro;
		while found loop
			begin 
				
				raise notice ' % ',registro.first_name;
				rec.nombre = registro.first_name;
				rec.email = registro.email;
				valida = length(registro.first_name);
				if valida>4 then 
					rec.valor = 100;
				else
					rec.valor = 1;
				end if;
			exception when others then 
				raise notice '% %',sqlerrm,sqlstate;
			end;
			return next rec;
			fetch cursor_tablas into registro;
		end loop;
		close cursor_tablas;
		return;
	end;
$function$
;