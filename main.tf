# -------------------
# Variables
# -------------------
variable "countries" {
  default = ["Canada", "USA", "Mexico", "Brazil"]
}

variable "cities" {
  default = ["Vancouver", "NewYork", "Cancun", "Rio"]
}

variable "company" {
  default = "MCIT"
}

variable "department" {
  default = "CloudEngineering"
}

variable "skills_string" {
  default = "Terraform,Docker,Kubernetes,Python"
}

# -------------------
# Locals (String Exercises)
# -------------------
locals {
  # 1. Concatenate company and department separated by underscore
  company_department = "${var.company}_${var.department}"

  # 2. Convert all country names to uppercase
  countries_upper = [for c in var.countries : upper(c)]

  # 3. Convert all city names to lowercase
  cities_lower = [for city in var.cities : lower(city)]

  # 4. Find the length of the department string
  department_length = length(var.department)

  # 5. Extract the first two characters of the company
  company_first_two = substr(var.company, 0, 2)

  # 6. Join all cities into a single string separated by " | "
  cities_joined = join(" | ", var.cities)

  # 7. Split skills_string into a list
  skills_list = split(",", var.skills_string)

  # 8. Replace "Engineering" with "DevOps" in department
  department_replaced = replace(var.department, "Engineering", "DevOps")

  # 9. Format introduction string
  intro = format("Welcome to %s's %s department!", var.company, var.department)

  # 10. Check if first city is Vancouver
  city_check = var.cities[0] == "Vancouver" ? "West Coast City" : "Different City"
}