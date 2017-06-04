.class public Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ChnUsageAlertDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final SEND_MESSAGE_DELAY_TIME:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "ChnUsageAlertDialogCmd"

.field public static final TYPE_CHANGE_PLAYER:I = 0x6

.field public static final TYPE_MAP_VIEW_VIA_NETWORK:I = 0x5

.field private static final TYPE_PERMISSION_FACETAG:I = 0xe

.field public static final TYPE_PERMISSION_TAG_BUDDY:I = 0xd

.field private static final TYPE_SCAN_NEARBY_DEVICE:I = 0x7

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private LatLong:[D

.field private bodyText:Ljava/lang/CharSequence;

.field private dataAlertDialog:Landroid/app/AlertDialog;

.field private dateInMs:[J

.field private justSelectedKeyOK:Z

.field private mContext:Landroid/content/Context;

.field private permissionAlertDialog:Landroid/app/AlertDialog;

.field private popupType:Ljava/lang/Integer;

.field private titleID:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->justSelectedKeyOK:Z

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dateInMs:[J

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->LatLong:[D

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->justSelectedKeyOK:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->justSelectedKeyOK:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)[D
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->LatLong:[D

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dateInMs:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->createTimeMapView()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->createCategoryView()V

    return-void
.end method

.method private createCategoryView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private createTimeMapView()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_MEDIA_ITEM_LOCATION"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->LatLong:[D

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v1, "KEY_MEDIA_ITEM_BWN_DATE"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dateInMs:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private dismissdialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ChnUsageAlertDialogCmd"

    const-string/jumbo v1, "Dismiss dataAlertDialog."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ChnUsageAlertDialogCmd"

    const-string/jumbo v1, "Dismiss permissionAlertDialog."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private showDialog()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dismissdialog()V

    const-string/jumbo v6, "ChnUsageAlertDialogCmd"

    const-string/jumbo v7, "Show dialog."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f04003e

    const/4 v6, 0x0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f1200a7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->bodyText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    const v7, 0x7f1000c0

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f12004f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->titleID:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v6, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$1;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;

    invoke-direct {v6, p0, v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$2;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v9, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$4;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_1

    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$5;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$5;-><init>(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9

    const v7, 0x7f0a04b1

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    aget-object v2, v0, v8

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dateInMs:[J

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->LatLong:[D

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v6

    check-cast v2, [D

    check-cast v2, [D

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->LatLong:[D

    const/4 v2, 0x4

    aget-object v2, v0, v2

    check-cast v2, [J

    check-cast v2, [J

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dateInMs:[J

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    :cond_1
    aget-object v2, v0, v6

    check-cast v2, Landroid/os/Handler;

    sput-object v2, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mHandler:Landroid/os/Handler;

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dataAlertDialog:Landroid/app/AlertDialog;

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->permissionAlertDialog:Landroid/app/AlertDialog;

    :cond_4
    if-nez v1, :cond_5

    const-string/jumbo v2, "ChnUsageAlertDialogCmd"

    const-string/jumbo v3, "Remove dialog command is occured."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->dismissdialog()V

    :goto_0
    return-void

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->titleID:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02c5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->bodyText:Ljava/lang/CharSequence;

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->showDialog()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    :cond_8
    const v2, 0x7f0a02c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->titleID:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02bf

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->bodyText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->titleID:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->bodyText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->popupType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->titleID:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->bodyText:Ljava/lang/CharSequence;

    goto/16 :goto_1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
