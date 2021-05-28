//
//  ContentView.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                ControlSection()
                LayoutSection()
                PaintsSection()
                OtherSection()
            }
            .navigationTitle("SwiftUIViews")
        }
    }
}

struct ControlSection: View {
    var body: some View {
        Section(header: Text("创作者的 IOS 独立开发指南")) {
            Group {
                NavigationLink(destination: TextRelatedViews()){
                    Text("文本视图")
                }
                NavigationLink(destination: LayoutRelatedViews()) {
                    Text("排版视图")
                }
                NavigationLink(destination: ShapeRelatedViews()) {
                    Text("绘图视图")
                }
                NavigationLink(destination: ControlRelatedViews()) {
                    Text("控制视图")
                }
                NavigationLink(destination: HierarchyRelatedViews()) {
                    Text("层级视图")
                }
                NavigationLink(destination: ContentsRelatedViews()) {
                    Text("信息视图")
                }
            }
            
            Group {
                NavigationLink(destination: TextRelatedModifiers()) {
                    Text("文本修改器")
                }
                NavigationLink(destination: LayoutRelatedModifiers()) {
                    Text("视图修改器")
                }
                NavigationLink(destination: ImageRelatedModifiers()) {
                    Text("图片修改器")
                }
                NavigationLink(destination: EffectRelatedModifiers()) {
                    Text("效果修改器")
                }
            }
            
            Group {
                NavigationLink(destination: LongPressGestureModifier()) {
                    Text("长按手势")
                }
                NavigationLink(destination: TapGestureModifier()) {
                    Text("轻点手势")
                }
                NavigationLink(destination: MagnificationGestureModifier()) {
                    Text("缩放手势")
                }
                NavigationLink(destination: RotationGestureModifer()) {
                    Text("旋转手势")
                }
                NavigationLink(destination: DragGestureModifer()) {
                    Text("拖拽手势")
                }
                NavigationLink(destination: CombineGesture()) {
                    Text("进阶组合手势")
                }
                NavigationLink(destination: PriorityGesture()) {
                    Text("手势优先级")
                }
            }
            
            Group {
                NavigationLink(destination: ImageTransition()) {
                    Text("过渡效果")
                }
                NavigationLink(destination: AsymmetricTransition()) {
                    Text("非对称过渡")
                }
                NavigationLink(destination: AnimatedPlayButton()) {
                    Text("播放暂停按钮")
                }
                NavigationLink(destination: AnimatedProgressView()) {
                    Text("载入进度条")
                }
                NavigationLink(destination: AnimatedCardFlip()) {
                    Text("翻牌特效")
                }
            }
            
            Group {
                NavigationLink(destination: ReactedView()) {
                    Text("数据流")
                }
            }
        }
        
        Section(header: Text("Controls")) {
            Group {
                NavigationLink(destination: ButtonSection()){
                    Text("Button")
                }
                NavigationLink(destination: BaseColorPicker()){
                    Text("ColorPicker")
                }
                NavigationLink(destination: DatePickerSection()){
                    Text("DatePicker")
                }
                NavigationLink(destination: BaseDisclosureGroup()){
                    Text("DisclosureGroup")
                }
                NavigationLink(destination: EditButtonSection()){
                    Text("EditButton")
                }
                NavigationLink(destination: BaseForm()){
                    Text("Form")
                }
                NavigationLink(destination: BaseGroupBox()){
                    Text("GroupBox")
                }
                NavigationLink(destination: LabelSection()){
                    Text("Label")
                }
                NavigationLink(destination: BaseLink()){
                    Text("Link")
                }
                NavigationLink(destination: ListSection()){
                    Text("List")
                }
            }
            Group {
                NavigationLink(destination: BaseNavigationLink()){
                    Text("NavigationLink")
                }
                NavigationLink(destination: PickerSection()){
                    Text("Picker")
                }
                NavigationLink(destination: ProgressViewSection()){
                    Text("ProgressView")
                }
                NavigationLink(destination: BaseSection()){
                    Text("Section")
                }
                NavigationLink(destination: BaseSecureField()){
                    Text("SecureField")
                }
                NavigationLink(destination: SliderSection()){
                    Text("Slider")
                }
                NavigationLink(destination: BaseStepper()){
                    Text("Stepper")
                }
                NavigationLink(destination: TabViewSection()){
                    Text("TabView")
                }
                NavigationLink(destination: BaseText()){
                    Text("Text")
                }
                NavigationLink(destination: BaseTextEditor()){
                    Text("TextEditor")
                }
            }
            Group {
                NavigationLink(destination: TextFieldSection()){
                    Text("TextField")
                }
                NavigationLink(destination: ToggleSection()){
                    Text("Toggle")
                }
            }
        }
    }
}

struct LayoutSection: View {
    var body: some View {
        Section(header: Text("Layout")){
            Group {
                NavigationLink(destination: GeometryReaderSection()){
                    Text("GeometryReader")
                }
                NavigationLink(destination: HStackSection()){
                    Text("HStack")
                }
                NavigationLink(destination: LazyHGridSection()){
                    Text("LazyHGrid")
                }
                NavigationLink(destination: BaseLazyHStack()){
                    Text("LazyHStack")
                }
                NavigationLink(destination: LazyVGridSection()){
                    Text("LazyVGrid")
                }
                NavigationLink(destination: BaseLazyVStack()){
                    Text("LazyVStack")
                }
                NavigationLink(destination: BaseScrollViewReader()){
                    Text("ScrollViewReader")
                }
                NavigationLink(destination: BaseSpacer()){
                    Text("Spacer")
                }
                NavigationLink(destination: VStackSection()){
                    Text("VStack")
                }
                NavigationLink(destination: ZStackSection()){
                    Text("ZStack")
                }
            }
        }
    }
}

struct PaintsSection: View {
    var body: some View {
        Section(header: Text("Paints")){
            Group {
                NavigationLink(destination: BaseAngularGradient()){
                    Text("AngularGradient")
                }
                NavigationLink(destination: BaseLinearGradient()){
                    Text("LinearGradient")
                }
                NavigationLink(destination: BaseRadialGradient()){
                    Text("RadialGradient")
                }
            }
        }
    }
}

struct OtherSection: View {
    var body: some View {
        Section(header: Text("Other")){
            Group {
                NavigationLink(destination: BaseDivider()){
                    Text("Divider")
                }
                NavigationLink(destination: BaseEmptyView()){
                    Text("EmptyView")
                }
                NavigationLink(destination: MenuSection()){
                    Text("Menu")
                }
                NavigationLink(destination: BaseShapes()){
                    Text("Shapes")
                }
            }
        }
    }
}

struct ButtonSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseButton()){
                Text("BasicButton")
            }
            NavigationLink(destination: ListButton()){
                Text("ListButton")
            }
            NavigationLink(destination: ContextMenuButton()){
                Text("ContextMenuButton")
            }
            NavigationLink(destination: StylingButton()){
                Text("StylingButton")
            }
        }
        .navigationTitle("Button")
    }
}

struct DatePickerSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseDatePicker()){
                Text("BaseDatePicker")
            }
            NavigationLink(destination: RangeDatePicker()){
                Text("RangeDatePicker")
            }
            NavigationLink(destination: StylingDatePicker()){
                Text("StylingDatePicker")
            }
        }
    }
}

struct EditButtonSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseEditButton()){
                Text("BaseEditButton")
            }
            NavigationLink(destination: CustomEditButton()){
                Text("CustomEditButton")
            }
        }
    }
}

struct LabelSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseLabel()){
                Text("BaseLabel")
            }
            NavigationLink(destination: StylingLabel()){
                Text("StylingLabel")
            }
            NavigationLink(destination: GroupStylingLabel()){
                Text("GroupStylingLabel")
            }
            NavigationLink(destination: ProgrammableLabel()){
                Text("ProgrammableLabel")
            }
        }
    }
}

struct ListSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseList()){
                Text("BaseList")
            }
            NavigationLink(destination: SelectionList()){
                Text("SelectionList")
            }
            NavigationLink(destination: HierachicalList()){
                Text("HierachicalList")
            }
            NavigationLink(destination: StylingList()){
                Text("StylingList")
            }
        }
    }
}

struct PickerSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BasePicker()){
                Text("BasePicker")
            }
            NavigationLink(destination: IteratingPicker()){
                Text("IteratingPicker")
            }
            NavigationLink(destination: StylingPicker()){
                Text("StylingPicker")
            }
        }
    }
}

struct ProgressViewSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseProgressView()){
                Text("BaseProgressView")
            }
            NavigationLink(destination: StylingProgressView()){
                Text("StylingProgressView")
            }
        }
    }
}

struct SliderSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseSlider()){
                Text("BaseSlider")
            }
            NavigationLink(destination: StepSlider()){
                Text("StepSlider")
            }
        }
    }
}

struct TabViewSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseTabView()){
                Text("BaseTabView")
            }
            NavigationLink(destination: SelectionTabView()){
                Text("SelectionTabView")
            }
        }
    }
}

struct TextFieldSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseTextField()){
                Text("BaseTextField")
            }
            NavigationLink(destination: FormatTextField()){
                Text("FormatTextField")
            }
            NavigationLink(destination: StylingTextField()){
                Text("StylingTextField")
            }
        }
    }
}

struct ToggleSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseToggle()){
                Text("BaseToggle")
            }
            NavigationLink(destination: StylingToggle()){
                Text("StylingToggle")
            }
        }
    }
}

struct GeometryReaderSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseGeometryReader()){
                Text("BaseGeomatryReader")
            }
            NavigationLink(destination: SafeAreaGeometryReader()){
                Text("SafeAreaGeometryReader")
            }
            NavigationLink(destination: FrameGeometryReader()){
                Text("FrameGeometryReader")
            }
        }
    }
}

struct HStackSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseHStack()){
                Text("BaseHStack")
            }
            NavigationLink(destination: LayerPriorityBaseHStack()){
                Text("LayerPriorityBaseHStack")
            }
        }
    }
}

struct LazyHGridSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseLazyHGrid()){
                Text("BaseLazyHGrid")
            }
            NavigationLink(destination: PinnedLazyHGrid()){
                Text("PinnedLazyHGrid")
            }
        }
    }
}

struct LazyVGridSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseLazyVGrid()){
                Text("BaseLazyVGrid")
            }
            NavigationLink(destination: PinnedLazyVGrid()){
                Text("PinnedLazyVGrid")
            }
        }
    }
}

struct VStackSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseVStack()){
                Text("BaseVStack")
            }
            NavigationLink(destination: LayerPriorityBaseVStack()){
                Text("LayerPriorityBaseVStack")
            }
        }
    }
}

struct ZStackSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseZStack()){
                Text("BaseZStack")
            }
            NavigationLink(destination: IgnoreSafeZStack()){
                Text("IgnoreSafeZStack")
            }
            NavigationLink(destination: ZIndexZStack()){
                Text("ZIndexZStack")
            }
        }
    }
}

struct MenuSection: View {
    var body: some View {
        Form {
            NavigationLink(destination: BaseMenu()){
                Text("BaseMenu")
            }
            NavigationLink(destination: StylingMenu()){
                Text("StylingMenu")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
