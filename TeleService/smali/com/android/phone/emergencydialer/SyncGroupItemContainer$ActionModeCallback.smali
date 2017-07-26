.class Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;
.super Ljava/lang/Object;
.source "SyncGroupItemContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private isEnabledButtonShape:Z

.field private mCancel:Landroid/widget/LinearLayout;

.field private mCheckedCount:I

.field private mDone:Landroid/widget/LinearLayout;

.field private mItemSize:I

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOperate:Z

.field final synthetic this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;


# direct methods
.method static synthetic -set0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mOperate:Z

    return p1
.end method

.method private constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mCheckedCount:I

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mItemSize:I

    iput-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mOperate:Z

    iput-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->isEnabledButtonShape:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    sget-object v5, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v2, v5}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f04005d

    invoke-static {v2, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f100120

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mCancel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mCancel:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$1;

    invoke-direct {v5, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$1;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f100121

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mDone:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mDone:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;

    invoke-direct {v5, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback$2;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "show_button_background"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->isEnabledButtonShape:Z

    iget-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->isEnabledButtonShape:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mCancel:Landroid/widget/LinearLayout;

    const v4, 0x7f020169

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mDone:Landroid/widget/LinearLayout;

    const v4, 0x7f02016a

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2, p1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-set1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v3

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-set1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v1, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mOperate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->performCancel()V

    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->mOperate:Z

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3

    const-string/jumbo v0, "EmergencySyncGroupItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemCheckedStateChanged position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f1002e5

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f100121

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f10016a

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyContactExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
