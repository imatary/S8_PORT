.class public Lcom/android/phone/TtyNotificationDialog;
.super Landroid/app/Activity;
.source "TtyNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static disableListItem:Z


# instance fields
.field private mAdapter:Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

.field private mDialog:Landroid/app/AlertDialog;

.field mNM:Lcom/android/phone/NotificationMgr;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/TtyNotificationDialog;->disableListItem:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/TtyNotificationDialog;)Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TtyNotificationDialog;->mAdapter:Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/TtyNotificationDialog;->DBG:Z

    sput-boolean v0, Lcom/android/phone/TtyNotificationDialog;->disableListItem:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TtyNotificationDialog;->mAdapter:Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

    iput-object v0, p0, Lcom/android/phone/TtyNotificationDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private initView()V
    .locals 4

    const-string/jumbo v2, "TtyNotificationDialog"

    const-string/jumbo v3, "initView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/TtyNotificationDialog;->disableListItem:Z

    :goto_0
    iget-object v2, p0, Lcom/android/phone/TtyNotificationDialog;->mAdapter:Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

    invoke-direct {v2, p0}, Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/TtyNotificationDialog;->mAdapter:Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/TtyNotificationDialog;->disableListItem:Z

    goto :goto_0
.end method

.method private showTtyDialog()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/TtyNotificationDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_tty_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0473

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/TtyNotificationDialog;->mAdapter:Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

    new-instance v4, Lcom/android/phone/TtyNotificationDialog$1;

    invoke-direct {v4, p0}, Lcom/android/phone/TtyNotificationDialog$1;-><init>(Lcom/android/phone/TtyNotificationDialog;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/TtyNotificationDialog$2;

    invoke-direct {v3, p0}, Lcom/android/phone/TtyNotificationDialog$2;-><init>(Lcom/android/phone/TtyNotificationDialog;)V

    const v4, 0x7f0d0327

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/TtyNotificationDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/TtyNotificationDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/phone/TtyNotificationDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/TtyNotificationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "TtyNotificationDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TtyNotificationDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Lcom/android/phone/TtyNotificationDialog;->initView()V

    invoke-direct {p0}, Lcom/android/phone/TtyNotificationDialog;->showTtyDialog()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
