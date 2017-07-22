.class Lcom/android/phone/EmergencyDialer$ActionModeCallback;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mCheckedCount:I

.field private mItemSize:I

.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    iput v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/EmergencyDialer;Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;-><init>(Lcom/android/phone/EmergencyDialer;)V

    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 6

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v3}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyContactsCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v3}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v3}, Lcom/android/phone/EmergencyDialer;->-get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    iget v5, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-interface {v3, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v2

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100121 -> :sswitch_0
        0x7f10016a -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v2

    sget-object v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040089

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/android/phone/EmergencyDialer;->-set2(Lcom/android/phone/EmergencyDialer;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100028

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v3, v2}, Lcom/android/phone/EmergencyDialer;->-set5(Lcom/android/phone/EmergencyDialer;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get2(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;-><init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->-get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;-><init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v2, p1}, Lcom/android/phone/EmergencyDialer;->-set1(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get1(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->-set1(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-boolean v0, v0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iput-boolean v2, v0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iput-boolean v2, v0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const v3, 0x7f10016a

    const/4 v2, 0x0

    const v0, 0x7f1002e2

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f100121

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-wrap1(Lcom/android/phone/EmergencyDialer;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyContactExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get1(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get1(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return v4

    :cond_1
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->-wrap1(Lcom/android/phone/EmergencyDialer;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateDeleteScreenItems()V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d09f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->-get2(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->-get2(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0a63

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
