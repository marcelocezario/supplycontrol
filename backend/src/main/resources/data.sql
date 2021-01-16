INSERT INTO public.tb_brand (name) VALUES ('Scania');
INSERT INTO public.tb_brand (name) VALUES ('Mercedes');
INSERT INTO public.tb_brand (name) VALUES ('Volvo');
INSERT INTO public.tb_brand (name) VALUES ('Volkswagen');
INSERT INTO public.tb_vehicle_model (name, brand_id) VALUES ('R114', 1);
INSERT INTO public.tb_vehicle_model (name, brand_id) VALUES ('P310', 1);
INSERT INTO public.tb_vehicle_model (name, brand_id) VALUES ('LS 1634', 2);
INSERT INTO public.tb_vehicle_model (name, brand_id) VALUES ('25390', 4);
INSERT INTO public.tb_vehicle_model (name, brand_id) VALUES ('FH12', 3);
INSERT INTO public.tb_vehicle (license_plate, model_year, tank_capacity, model_vehicle_id) VALUES ('AAA1A111', 2020, 500, 1);
INSERT INTO public.tb_vehicle (license_plate, model_year, tank_capacity, model_vehicle_id) VALUES ('BBB1A111', 2019, 300, 1);
INSERT INTO public.tb_vehicle (license_plate, model_year, tank_capacity, model_vehicle_id) VALUES ('CCC1A111', 2018, 200, 3);
INSERT INTO public.tb_vehicle (license_plate, model_year, tank_capacity, model_vehicle_id) VALUES ('DDD1A111', 2000, 600, 2);
INSERT INTO public.tb_vehicle (license_plate, model_year, tank_capacity, model_vehicle_id) VALUES ('EEE1A111', 1999, 500, 5);
INSERT INTO public.tb_vehicle (license_plate, model_year, tank_capacity, model_vehicle_id) VALUES ('FFF1A111', 1998, 600, 3);
INSERT INTO public.tb_vehicle (license_plate, model_year, tank_capacity, model_vehicle_id) VALUES ('GGG1A111', 2020, 400, 3);
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-01T00:00:00Z', 500, '3.599', '90.0', true, 3, 1, '0.0'); 
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-02T00:00:00Z', 910, '3.599', '90.0', true, 3, 1, '4.5555');
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-03T00:00:00Z', 1000, '3.599', '60.', true, 3, 1, '1.5');
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-04T00:00:00Z', 1300, '3.599', '95.0', true, 3, 1, '3.1578');
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-05T00:00:00Z', 2000, '3.599', '110.0', true, 3, 1, '6.3636'); 
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-06T00:00:00Z', 1000, '3.599', '80.0', true, 3, 2, '0.0');
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-07T00:00:00Z', 1500, '3.599', '130.0', false, 3, 2, '0.0');
INSERT INTO public.tb_supply (moment, odometer, liter_value_of_fuel, liters_filled, full_tank, fuel, vehicle_id, average_consumption) VALUES ('2021-01-08T00:00:00Z', 1800, '3.599', '130.0', true, 3, 2, '3.0769');
