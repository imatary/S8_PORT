.class Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->goToEditRejectMsgScreen(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V

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
    .locals 7

    const v6, 0x7f100027

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->semSetCustomMultiChoiceModeEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const v2, 0x7f120001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040084

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100028

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v3, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set7(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set1(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get14(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get14(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set5(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set0(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-string/jumbo v1, "onDestroyActionMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set8(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get13(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get13(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get13(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get2(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set0(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get3(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setActionMode(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get7(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set9(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set3(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set5(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

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

    invoke-static {v0, v1, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get10(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get16(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get5(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get5(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get16(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get2(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-string/jumbo v1, "long press list enter actionmode set mState to DELETE_SCREEN"

    invoke-static {v0, v1, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-wrap2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set9(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set10(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set6(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get12(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get13(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAllList()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->updateSelectionMenu()V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const v0, 0x7f100005

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->unSelectAllList()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f100121

    const v5, 0x7f1002e2

    const v4, 0x7f10016a

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get1(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get3(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

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
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get8(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_2
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

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

    const/4 v3, -0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get15(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-set8(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get4(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get14(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get15(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->-get14(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2
.end method
