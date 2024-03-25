CREATE TABLE public.cars (
    ground_clearance integer,
    height_mm integer,
    horsepower integer,
    length_mm integer,
    model_year integer,
    width_mm integer,
    id bigint NOT NULL,
    body_type character varying(255),
    car_type character varying(255),
    color character varying(255),
    engine_type character varying(255),
    fuel_type character varying(255),
    manufacturer character varying(255),
    model character varying(255),
    transmission character varying(255)
);


INSERT INTO public.cars VALUES (170, 1600, 185, 4400, 2015, 1800, 1, 'Sedan', '2 Wheels', 'Red', 'V6', 'Petrol', 'Toyota', 'Corolla', 'Manual');
INSERT INTO public.cars VALUES (160, 1500, 174, 4200, 2018, 1700, 2, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 198, 4600, 2020, 1900, 3, 'Sedan', '2 Wheels', 'Black', 'V6', 'Diesel', 'Honda', 'Accord', 'Manual');
INSERT INTO public.cars VALUES (170, 1700, 203, 4400, 2012, 1800, 4, 'Sedan', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Toyota', 'Camry', 'Automatic');
INSERT INTO public.cars VALUES (190, 1600, 450, 4800, 2019, 1900, 5, 'Coupe', 'Sports', 'Red', 'V8', 'Petrol', 'Ford', 'Mustang', 'Manual');
INSERT INTO public.cars VALUES (180, 1800, 455, 4800, 2017, 2000, 6, 'Coupe', 'Sports', 'Blue', 'V8', 'Petrol', 'Chevrolet', 'Camaro', 'Automatic');
INSERT INTO public.cars VALUES (170, 1700, 375, 4600, 2016, 1900, 7, 'Coupe', 'Sports', 'Black', 'V8', 'Petrol', 'Dodge', 'Challenger', 'Manual');
INSERT INTO public.cars VALUES (140, 1440, 283, 4694, 2022, 1850, 8, 'Sedan', 'Electric', 'Black', 'Electric', 'Electric', 'Tesla', 'Model 3', 'Automatic');
INSERT INTO public.cars VALUES (170, 1700, 300, 4600, 2022, 1900, 9, 'SUV', 'All Wheels', 'Silver', 'V6', 'Petrol', 'Ford', 'Explorer', 'Automatic');
INSERT INTO public.cars VALUES (160, 1600, 182, 4400, 2013, 1800, 10, 'SUV', 'All Wheels', 'Green', 'Inline-4', 'Diesel', 'Hyundai', 'Tucson', 'Manual');
INSERT INTO public.cars VALUES (150, 1500, 140, 4200, 2011, 1700, 11, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Manual');
INSERT INTO public.cars VALUES (180, 1800, 450, 4800, 2019, 1900, 12, 'Coupe', 'Sports', 'Black', 'V8', 'Petrol', 'Ford', 'Mustang', 'Automatic');
INSERT INTO public.cars VALUES (170, 1700, 260, 4600, 2017, 1900, 13, 'SUV', 'All Wheels', 'Red', 'V6', 'Petrol', 'Hyundai', 'Tucson', 'Automatic');
INSERT INTO public.cars VALUES (160, 1500, 143, 4200, 2014, 1700, 14, 'Sedan', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 250, 4800, 2016, 2000, 15, 'SUV', 'All Wheels', 'Blue', 'V6', 'Diesel', 'Ford', 'Explorer', 'Manual');
INSERT INTO public.cars VALUES (170, 1700, 203, 4400, 2018, 1800, 16, 'Sedan', '2 Wheels', 'Red', 'Inline-4', 'Petrol', 'Toyota', 'Camry', 'Automatic');
INSERT INTO public.cars VALUES (150, 1550, 147, 4490, 2019, 1690, 17, 'Hatchback', 'Electric', 'Green', 'Electric', 'Electric', 'Nissan', 'Leaf', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 200, 4600, 2021, 1900, 18, 'Sedan', '2 Wheels', 'Black', 'V6', 'Diesel', 'Honda', 'Accord', 'Manual');
INSERT INTO public.cars VALUES (170, 1600, 180, 4400, 2013, 1800, 19, 'Sedan', '2 Wheels', 'Blue', 'V6', 'Petrol', 'Toyota', 'Corolla', 'Manual');
INSERT INTO public.cars VALUES (180, 1800, 395, 4800, 2020, 2000, 20, 'Truck', '2 Wheels', 'White', 'V8', 'Petrol', 'Ford', 'F-150', 'Automatic');
INSERT INTO public.cars VALUES (170, 1700, 372, 4600, 2015, 1900, 21, 'Coupe', 'Sports', 'Black', 'V8', 'Petrol', 'Dodge', 'Challenger', 'Automatic');
INSERT INTO public.cars VALUES (160, 1600, 180, 4400, 2019, 1800, 22, 'SUV', 'All Wheels', 'Green', 'Inline-4', 'Diesel', 'Hyundai', 'Tucson', 'Manual');
INSERT INTO public.cars VALUES (150, 1500, 158, 4200, 2016, 1700, 23, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 290, 4800, 2015, 2000, 24, 'SUV', 'All Wheels', 'Silver', 'V6', 'Petrol', 'Ford', 'Explorer', 'Automatic');
INSERT INTO public.cars VALUES (170, 1700, 270, 4600, 2014, 1900, 25, 'SUV', 'All Wheels', 'Green', 'V6', 'Petrol', 'Hyundai', 'Tucson', 'Automatic');
INSERT INTO public.cars VALUES (170, 1650, 402, 4901, 2019, 1935, 26, 'SUV', 'Electric', 'Blue', 'Electric', 'Electric', 'Audi', 'e-tron', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 455, 4800, 2020, 2000, 27, 'Coupe', 'Sports', 'Black', 'V8', 'Petrol', 'Chevrolet', 'Camaro', 'Manual');
INSERT INTO public.cars VALUES (180, 1800, 290, 4800, 2017, 2000, 28, 'Truck', '2 Wheels', 'White', 'V6', 'Petrol', 'Ford', 'F-150', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 250, 4800, 2019, 2000, 29, 'SUV', 'All Wheels', 'Blue', 'V6', 'Diesel', 'Ford', 'Explorer', 'Manual');
INSERT INTO public.cars VALUES (150, 1440, 503, 4970, 2018, 1960, 30, 'Sedan', 'Electric', 'Blue', 'Electric', 'Electric', 'Tesla', 'Model S', 'Automatic');
INSERT INTO public.cars VALUES (140, 1578, 168, 3999, 2020, 1775, 31, 'Hatchback', 'Electric', 'White', 'Electric', 'Electric', 'BMW', 'i3', 'Automatic');
INSERT INTO public.cars VALUES (150, 1609, 200, 4166, 2017, 1765, 32, 'Hatchback', 'Electric', 'Red', 'Electric', 'Electric', 'Chevrolet', 'Bolt', 'Automatic');
INSERT INTO public.cars VALUES (170, 1650, 355, 4901, 2021, 1935, 33, 'SUV', 'Electric', 'Black', 'Electric', 'Electric', 'Audi', 'e-tron', 'Automatic');
INSERT INTO public.cars VALUES (150, 1500, 150, 4200, 2013, 1700, 34, 'Sedan', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Manual');
INSERT INTO public.cars VALUES (165, 1593, 109, 4195, 2016, 1800, 35, 'Hatchback', 'Electric', 'Gray', 'Electric', 'Electric', 'Kia', 'Soul EV', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 290, 4800, 2014, 2000, 36, 'Truck', '2 Wheels', 'White', 'V6', 'Petrol', 'Ford', 'F-150', 'Automatic');
INSERT INTO public.cars VALUES (160, 1478, 134, 4470, 2019, 1820, 37, 'Hatchback', 'Electric', 'Silver', 'Electric', 'Electric', 'Hyundai', 'Ioniq EV', 'Automatic');
INSERT INTO public.cars VALUES (150, 1624, 402, 4761, 2020, 1884, 38, 'SUV', 'Electric', 'White', 'Electric', 'Electric', 'Mercedes-Benz', 'EQC', 'Automatic');
INSERT INTO public.cars VALUES (180, 1800, 460, 4800, 2018, 1900, 39, 'Coupe', 'Sports', 'Red', 'V8', 'Petrol', 'Ford', 'Mustang', 'Manual');
INSERT INTO public.cars VALUES (157, 1476, 132, 4696, 2016, 1778, 40, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Toyota', 'Corolla', 'Manual');
INSERT INTO public.cars VALUES (152, 1529, 158, 4515, 2019, 1779, 41, 'Sedan', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (155, 1450, 178, 4910, 2017, 1860, 42, 'Sedan', '2 Wheels', 'Silver', 'Inline-4', 'Petrol', 'Hyundai', 'Sonata', 'Manual');
INSERT INTO public.cars VALUES (160, 1624, 384, 4761, 2021, 1873, 43, 'SUV', 'Electric', 'Red', 'Electric', 'Electric', 'Tesla', 'Model Y', 'Automatic');
INSERT INTO public.cars VALUES (180, 1720, 180, 4436, 2020, 1848, 44, 'SUV', 'All Wheels', 'Black', 'V6', 'Diesel', 'Ford', 'Escape', 'Manual');
INSERT INTO public.cars VALUES (170, 1550, 203, 4800, 2018, 1855, 45, 'SUV', 'All Wheels', 'Gray', 'V6', 'Petrol', 'Toyota', 'Rav4', 'Automatic');
INSERT INTO public.cars VALUES (150, 1469, 148, 4255, 2015, 1799, 46, 'Hatchback', '2 Wheels', 'Blue', 'Inline-4', 'Diesel', 'Volkswagen', 'Golf', 'Manual');
INSERT INTO public.cars VALUES (150, 1440, 532, 4970, 2016, 1960, 47, 'Sedan', 'Electric', 'Black', 'Electric', 'Electric', 'Tesla', 'Model S', 'Automatic');
INSERT INTO public.cars VALUES (165, 1680, 170, 4684, 2019, 1845, 48, 'SUV', 'All Wheels', 'White', 'Inline-4', 'Petrol', 'Nissan', 'Rogue', 'Manual');
INSERT INTO public.cars VALUES (230, 1900, 285, 4238, 2018, 1875, 49, 'SUV', 'All Wheels', 'Green', 'V6', 'Petrol', 'Jeep', 'Wrangler', 'Automatic');
INSERT INTO public.cars VALUES (180, 1851, 385, 5262, 2015, 2029, 50, 'Truck', '2 Wheels', 'Red', 'V8', 'Petrol', 'Ford', 'F-150', 'Automatic');
INSERT INTO public.cars VALUES (120, 1427, 190, 4939, 2017, 2040, 51, 'Sedan', '2 Wheels', 'Black', 'Inline-4', 'Diesel', 'Audi', 'A4', 'Manual');
INSERT INTO public.cars VALUES (150, 1460, 301, 4875, 2019, 1839, 52, 'Sedan', '2 Wheels', 'Blue', 'V6', 'Petrol', 'Toyota', 'Camry', 'Automatic');
INSERT INTO public.cars VALUES (210, 1676, 271, 4626, 2018, 1859, 53, 'SUV', 'All Wheels', 'White', 'V6', 'Petrol', 'Jeep', 'Cherokee', 'Automatic');
INSERT INTO public.cars VALUES (155, 1450, 198, 4910, 2013, 1860, 54, 'Sedan', '2 Wheels', 'Gray', 'Inline-4', 'Petrol', 'Hyundai', 'Sonata', 'Manual');
INSERT INTO public.cars VALUES (170, 1650, 355, 4901, 2019, 1935, 55, 'SUV', 'Electric', 'White', 'Electric', 'Electric', 'Audi', 'e-tron', 'Automatic');
INSERT INTO public.cars VALUES (152, 1529, 140, 4515, 2013, 1779, 56, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (165, 1680, 170, 4684, 2017, 1845, 57, 'SUV', 'All Wheels', 'Black', 'Inline-4', 'Petrol', 'Nissan', 'Rogue', 'Manual');
INSERT INTO public.cars VALUES (245, 1800, 278, 5395, 2020, 1930, 58, 'Truck', '2 Wheels', 'Red', 'V6', 'Petrol', 'Toyota', 'Tacoma', 'Automatic');
INSERT INTO public.cars VALUES (157, 1476, 132, 4696, 2014, 1778, 59, 'Sedan', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Toyota', 'Corolla', 'Manual');
INSERT INTO public.cars VALUES (180, 1851, 385, 5262, 2017, 2029, 60, 'Truck', '2 Wheels', 'Blue', 'V8', 'Petrol', 'Ford', 'F-150', 'Manual');
INSERT INTO public.cars VALUES (150, 1466, 276, 4767, 2020, 1834, 61, 'Sedan', '2 Wheels', 'Gray', 'V6', 'Petrol', 'Volkswagen', 'Passat', 'Automatic');
INSERT INTO public.cars VALUES (155, 1450, 185, 4910, 2015, 1860, 62, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Hyundai', 'Sonata', 'Automatic');
INSERT INTO public.cars VALUES (180, 1720, 180, 4436, 2019, 1848, 63, 'SUV', 'All Wheels', 'Black', 'V6', 'Diesel', 'Ford', 'Escape', 'Manual');
INSERT INTO public.cars VALUES (210, 1676, 271, 4626, 2016, 1859, 64, 'SUV', 'All Wheels', 'White', 'V6', 'Petrol', 'Jeep', 'Cherokee', 'Manual');
INSERT INTO public.cars VALUES (230, 1900, 285, 4238, 2015, 1875, 65, 'SUV', 'All Wheels', 'Red', 'V6', 'Petrol', 'Jeep', 'Wrangler', 'Automatic');
INSERT INTO public.cars VALUES (150, 1469, 148, 4255, 2019, 1799, 66, 'Hatchback', '2 Wheels', 'Blue', 'Inline-4', 'Diesel', 'Volkswagen', 'Golf', 'Manual');
INSERT INTO public.cars VALUES (170, 1650, 503, 4901, 2018, 1935, 67, 'SUV', 'Electric', 'Black', 'Electric', 'Electric', 'Audi', 'e-tron', 'Automatic');
INSERT INTO public.cars VALUES (245, 1800, 278, 5395, 2018, 1930, 68, 'Truck', '2 Wheels', 'White', 'V6', 'Petrol', 'Toyota', 'Tacoma', 'Automatic');
INSERT INTO public.cars VALUES (152, 1529, 158, 4515, 2017, 1779, 69, 'Sedan', '2 Wheels', 'Black', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (155, 1450, 178, 4910, 2018, 1860, 70, 'Sedan', '2 Wheels', 'White', 'Inline-4', 'Diesel', 'Hyundai', 'Sonata', 'Manual');
INSERT INTO public.cars VALUES (160, 1624, 532, 5036, 2020, 1999, 71, 'SUV', 'Electric', 'Red', 'Electric', 'Electric', 'Tesla', 'Model X', 'Automatic');
INSERT INTO public.cars VALUES (180, 1720, 180, 4436, 2016, 1848, 72, 'SUV', 'All Wheels', 'Blue', 'V6', 'Diesel', 'Ford', 'Escape', 'Manual');
INSERT INTO public.cars VALUES (170, 1550, 203, 4800, 2019, 1855, 73, 'SUV', 'All Wheels', 'Silver', 'V6', 'Petrol', 'Toyota', 'Rav4', 'Manual');
INSERT INTO public.cars VALUES (150, 1469, 170, 4255, 2017, 1799, 74, 'Hatchback', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Volkswagen', 'Golf', 'Automatic');
INSERT INTO public.cars VALUES (150, 1440, 503, 4970, 2017, 1960, 75, 'Sedan', 'Electric', 'Blue', 'Electric', 'Electric', 'Tesla', 'Model S', 'Automatic');
INSERT INTO public.cars VALUES (165, 1680, 170, 4684, 2018, 1845, 76, 'SUV', 'All Wheels', 'Black', 'Inline-4', 'Petrol', 'Nissan', 'Rogue', 'Manual');
INSERT INTO public.cars VALUES (230, 1900, 285, 4238, 2016, 1875, 77, 'SUV', 'All Wheels', 'Green', 'V6', 'Petrol', 'Jeep', 'Wrangler', 'Automatic');
INSERT INTO public.cars VALUES (180, 1851, 385, 5262, 2016, 2029, 78, 'Truck', '2 Wheels', 'Red', 'V8', 'Petrol', 'Ford', 'F-150', 'Automatic');
INSERT INTO public.cars VALUES (120, 1427, 190, 4939, 2019, 2040, 79, 'Sedan', '2 Wheels', 'Black', 'Inline-4', 'Diesel', 'Audi', 'A4', 'Manual');
INSERT INTO public.cars VALUES (150, 1460, 301, 4875, 2015, 1839, 80, 'Sedan', '2 Wheels', 'Blue', 'V6', 'Petrol', 'Toyota', 'Camry', 'Automatic');
INSERT INTO public.cars VALUES (210, 1676, 271, 4626, 2019, 1859, 81, 'SUV', 'All Wheels', 'White', 'V6', 'Petrol', 'Jeep', 'Cherokee', 'Automatic');
INSERT INTO public.cars VALUES (155, 1450, 198, 4910, 2012, 1860, 82, 'Sedan', '2 Wheels', 'Gray', 'Inline-4', 'Petrol', 'Hyundai', 'Sonata', 'Manual');
INSERT INTO public.cars VALUES (170, 1650, 355, 4901, 2020, 1935, 83, 'SUV', 'Electric', 'White', 'Electric', 'Electric', 'Audi', 'e-tron', 'Automatic');
INSERT INTO public.cars VALUES (152, 1529, 140, 4515, 2014, 1779, 84, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (165, 1680, 170, 4684, 2016, 1845, 85, 'SUV', 'All Wheels', 'Black', 'Inline-4', 'Petrol', 'Nissan', 'Rogue', 'Manual');
INSERT INTO public.cars VALUES (245, 1800, 278, 5395, 2019, 1930, 86, 'Truck', '2 Wheels', 'Red', 'V6', 'Petrol', 'Toyota', 'Tacoma', 'Automatic');
INSERT INTO public.cars VALUES (157, 1476, 132, 4696, 2015, 1778, 87, 'Sedan', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Toyota', 'Corolla', 'Manual');
INSERT INTO public.cars VALUES (180, 1851, 385, 5262, 2018, 2029, 88, 'Truck', '2 Wheels', 'Blue', 'V8', 'Petrol', 'Ford', 'F-150', 'Manual');
INSERT INTO public.cars VALUES (150, 1466, 276, 4767, 2019, 1834, 89, 'Sedan', '2 Wheels', 'Gray', 'V6', 'Petrol', 'Volkswagen', 'Passat', 'Automatic');
INSERT INTO public.cars VALUES (155, 1450, 185, 4910, 2017, 1860, 90, 'Sedan', '2 Wheels', 'Blue', 'Inline-4', 'Petrol', 'Hyundai', 'Sonata', 'Automatic');
INSERT INTO public.cars VALUES (180, 1720, 180, 4436, 2021, 1848, 91, 'SUV', 'All Wheels', 'Black', 'V6', 'Diesel', 'Ford', 'Escape', 'Manual');
INSERT INTO public.cars VALUES (210, 1676, 271, 4626, 2017, 1859, 92, 'SUV', 'All Wheels', 'White', 'V6', 'Petrol', 'Jeep', 'Cherokee', 'Manual');
INSERT INTO public.cars VALUES (230, 1900, 285, 4238, 2019, 1875, 93, 'SUV', 'All Wheels', 'Red', 'V6', 'Petrol', 'Jeep', 'Wrangler', 'Automatic');
INSERT INTO public.cars VALUES (150, 1469, 148, 4255, 2018, 1799, 94, 'Hatchback', '2 Wheels', 'Blue', 'Inline-4', 'Diesel', 'Volkswagen', 'Golf', 'Manual');
INSERT INTO public.cars VALUES (170, 1650, 503, 4901, 2017, 1935, 95, 'SUV', 'Electric', 'Black', 'Electric', 'Electric', 'Audi', 'e-tron', 'Automatic');
INSERT INTO public.cars VALUES (245, 1800, 278, 5395, 2020, 1930, 96, 'Truck', '2 Wheels', 'White', 'V6', 'Petrol', 'Toyota', 'Tacoma', 'Automatic');
INSERT INTO public.cars VALUES (152, 1529, 158, 4515, 2018, 1779, 97, 'Sedan', '2 Wheels', 'Black', 'Inline-4', 'Petrol', 'Honda', 'Civic', 'Automatic');
INSERT INTO public.cars VALUES (155, 1450, 198, 4910, 2013, 1860, 98, 'Sedan', '2 Wheels', 'Gray', 'Inline-4', 'Petrol', 'Hyundai', 'Sonata', 'Manual');
INSERT INTO public.cars VALUES (140, 1440, 283, 4694, 2019, 1850, 99, 'Sedan', 'Electric', 'Black', 'Electric', 'Electric', 'Tesla', 'Model 3', 'Automatic');
INSERT INTO public.cars VALUES (180, 1720, 180, 4436, 2015, 1848, 100, 'SUV', 'All Wheels', 'Blue', 'V6', 'Diesel', 'Ford', 'Escape', 'Manual');
INSERT INTO public.cars VALUES (170, 1550, 203, 4800, 2021, 1855, 101, 'SUV', 'All Wheels', 'Silver', 'V6', 'Petrol', 'Toyota', 'Rav4', 'Manual');
INSERT INTO public.cars VALUES (150, 1469, 170, 4255, 2016, 1799, 102, 'Hatchback', '2 Wheels', 'White', 'Inline-4', 'Petrol', 'Volkswagen', 'Golf', 'Automatic');
INSERT INTO public.cars VALUES (150, 1440, 503, 4970, 2015, 1960, 103, 'Sedan', 'Electric', 'Blue', 'Electric', 'Electric', 'Tesla', 'Model S', 'Automatic');
INSERT INTO public.cars VALUES (165, 1680, 170, 4684, 2020, 1845, 104, 'SUV', 'All Wheels', 'Black', 'Inline-4', 'Petrol', 'Nissan', 'Rogue', 'Manual');
INSERT INTO public.cars VALUES (230, 1900, 285, 4238, 2017, 1875, 105, 'SUV', 'All Wheels', 'Green', 'V6', 'Petrol', 'Jeep', 'Wrangler', 'Automatic');
INSERT INTO public.cars VALUES (180, 1851, 385, 5262, 2019, 2029, 106, 'Truck', '2 Wheels', 'Red', 'V8', 'Petrol', 'Ford', 'F-150', 'Automatic');
INSERT INTO public.cars VALUES (120, 1427, 190, 4939, 2016, 2040, 107, 'Sedan', '2 Wheels', 'Black', 'Inline-4', 'Diesel', 'Audi', 'A4', 'Manual');


--
-- TOC entry 3233 (class 2606 OID 16417)
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


-- Completed on 2024-03-25 03:31:24 +08

--
-- PostgreSQL database dump complete
--

