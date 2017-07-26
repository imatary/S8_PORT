.class Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;
.super Ljava/lang/Object;
.source "SubNumberManager.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SubNumberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/callsettings/SubNumberManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/SubNumberManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/SubNumberManager;Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/SubNumberManager;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v0, v0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/SubNumberManager;->-set7(Lcom/android/phone/callsettings/SubNumberManager;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager;->goToEditSubNumberScreen()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100121 -> :sswitch_1
        0x7f10016a -> :sswitch_1
        0x7f1002e5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f100027

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get1(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get1(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SubNumberManager;->-set2(Lcom/android/phone/callsettings/SubNumberManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v2, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v2, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const v2, 0x7f120001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SubNumberManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040084

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100028

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v3, v2}, Lcom/android/phone/callsettings/SubNumberManager;->-set6(Lcom/android/phone/callsettings/SubNumberManager;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/android/phone/callsettings/SubNumberManager;->-set1(Lcom/android/phone/callsettings/SubNumberManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get11(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/SubNumberManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get11(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback$1;-><init>(Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback$2;-><init>(Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2, p1}, Lcom/android/phone/callsettings/SubNumberManager;->-set0(Lcom/android/phone/callsettings/SubNumberManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get15(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v2}, Lcom/android/phone/callsettings/SubNumberManager;->-get15(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v3}, Lcom/android/phone/callsettings/SubNumberManager;->-get14(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v0, v0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v1}, Lcom/android/phone/callsettings/SubNumberManager;->-get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/SubNumberManager;->-set2(Lcom/android/phone/callsettings/SubNumberManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get3(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/SubNumberManager;->-set0(Lcom/android/phone/callsettings/SubNumberManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get4(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->setActionMode(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->-set8(Lcom/android/phone/callsettings/SubNumberManager;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->-set3(Lcom/android/phone/callsettings/SubNumberManager;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get1(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get1(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemCheckedStateChanged, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap2(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;Z)V

    if-eqz p5, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get13(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get3(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const-string/jumbo v1, "long press list enter actionmode set mState to DELETE_SCREEN"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap2(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->-set8(Lcom/android/phone/callsettings/SubNumberManager;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v0, v0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->-set5(Lcom/android/phone/callsettings/SubNumberManager;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get9(Lcom/android/phone/callsettings/SubNumberManager;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPopupItemClick(I)Z
    .locals 1

    const v0, 0x7f100004

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager;->selectAllList()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->updateSelectionMenu()V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const v0, 0x7f100005

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager;->unSelectAllList()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f100121

    const v5, 0x7f1002e5

    const/4 v4, 0x1

    const v3, 0x7f10016a

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get2(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback$3;-><init>(Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get4(Lcom/android/phone/callsettings/SubNumberManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get7(Lcom/android/phone/callsettings/SubNumberManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_2
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSelectionMenu()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v1}, Lcom/android/phone/callsettings/SubNumberManager;->-get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v1}, Lcom/android/phone/callsettings/SubNumberManager;->-get5(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v1, v1, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v2, v2, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v1}, Lcom/android/phone/callsettings/SubNumberManager;->-get11(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v1}, Lcom/android/phone/callsettings/SubNumberManager;->-get11(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
