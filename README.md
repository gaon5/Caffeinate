

# **Caffeinate Payment System**

## **Overview**
The **Caffeinate Payment System** is a Ruby-based application designed to simulate a coffee shop's order and payment workflows. It implements object-oriented programming (OOP) principles, behavior-driven development (BDD) testing using Cucumber, and CI/CD automation with GitHub Actions.

---

## **Features**
- **Order Management**: Customers can place orders with associates.
- **Payment Processing**:
  - Payments are processed based on a minimum card value.
  - Associates request cash if the payment doesn't meet the card minimum.
- **Automated Testing**:
  - BDD tests with Cucumber for high-level scenarios.
  - CI/CD pipeline with GitHub Actions for automated testing on every commit.

---

## **Repository Structure**

```plaintext
.
├── .github/
│   └── workflows/
│       └── ci-cd.yml         # CI/CD pipeline configuration
├── features/
│   ├── step_definitions/
│   │   └── steps.rb          # Cucumber step definitions
│   ├── support/
│   │   └── env.rb            # Cucumber environment setup
│   └── card_minimum.feature  # Feature file for card minimum scenarios
├── lib/
│   └── caffeinate.rb         # Main application logic
├── .gitignore                # Git ignore rules
├── Gemfile                   # Ruby gem dependencies
├── Gemfile.lock              # Locked gem versions
└── README.md                 # Project documentation
```

---

## **Test Case Example**

### **Feature: Card Minimum**
**Scenario: Payment above the card minimum**
- **Given**: A customer places a coffee order of `$5`.
- **When**: The customer pays with a credit card.
- **Then**: The associate processes the payment successfully.

**Scenario: Payment below the card minimum**
- **Given**: A customer places a coffee order of `$1`.
- **When**: The customer pays with a credit card.
- **Then**: The associate requests cash instead.

---

## **How to Run the Project**

### **Prerequisites**
- **Ruby 2.6+** installed.
- Bundler for managing gem dependencies.

### **Setup**
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/caffeinate.git
   cd caffeinate
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Run the application (simulate workflows):
   ```bash
   ruby lib/caffeinate.rb
   ```

---

## **How to Run Tests**

### **Cucumber (BDD Tests)**
To run behavior-driven tests:
```bash
bundle exec cucumber
```

### **Automated CI/CD Pipeline**
The CI/CD pipeline automatically runs tests when you push changes to the repository.

---

## **CI/CD Pipeline**
The pipeline is defined in `.github/workflows/ci-cd.yml` and includes the following steps:
1. **Set up Ruby environment**: Ensures the correct Ruby version is used.
2. **Install dependencies**: Installs required gems via Bundler.
3. **Run tests**: Executes Cucumber scenarios to validate application functionality.

---

## **Skills Demonstrated**
- **Object-Oriented Programming**:
  - Classes for `Customer`, `Associate`, and `Caffeinate`.
  - Encapsulation of payment logic.
- **Behavior-Driven Development (BDD)**:
  - Scenarios written in Gherkin syntax with Cucumber.
  - Step definitions in `features/step_definitions/steps.rb`.
- **Automation and CI/CD**:
  - GitHub Actions pipeline for continuous integration and testing.
- **Version Control**:
  - Managed project codebase with Git and hosted on GitHub.

---

## **Contribution**
We welcome contributions to improve this project. To contribute:
1. Fork the repository.
2. Create a new branch for your feature:
   ```bash
   git checkout -b feature/new-feature
   ```
3. Push your changes and submit a pull request.

