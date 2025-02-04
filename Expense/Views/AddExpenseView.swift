import SwiftUI

struct AddExepenseView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var expenseVM: ExpenseViewModel
    
    @State private var expenseTitle: String = ""
    @State private var expenseValue: Int = 0
    @State private var label: Label = .perso
    
    var body: some View {
        VStack {
            TextField("Add an expense", text: $expenseTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            Picker("Label", selection: $label){
                ForEach(Label.allCases, id: \.self) { label in
                    Text(label.rawValue)}
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button {
                self.expenseVM.addExpense(expense: Expense(title: expenseTitle, value: expenseValue, label: label))
                self.presentationMode.wrappedValue.dismiss()
                
            } label: {
                Text("SAVE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding(14)
        .navigationTitle("Add a todo")
    }
    
}

#Preview {
    NavigationView {
        AddExepenseView()
            .environmentObject(ExpenseViewModel())
    }
}
