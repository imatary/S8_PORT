.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap1(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100121 -> :sswitch_1
        0x7f10016a -> :sswitch_1
        0x7f1002e2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const v5, 0x7f100027

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->semSetCustomMultiChoiceModeEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set2(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    const v1, 0x7f120001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040084

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f100028

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {v2, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f100029

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set1(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get16(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get16(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$1;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback$2;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set2(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get2(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->setActionMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get15(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get15(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-set6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap4(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2

    if-eqz p5, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get12(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get10(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updatePopupMenuItemsVisibility()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get5(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPopupItemClick(I)Z
    .locals 1

    const v0, 0x7f100004

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllList()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :cond_1
    const v0, 0x7f100005

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->unSelectAllList()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const v5, 0x7f100121

    const v4, 0x7f1002e2

    const v3, 0x7f10016a

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get8(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_2
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get7(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get4(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get16(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get16(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
