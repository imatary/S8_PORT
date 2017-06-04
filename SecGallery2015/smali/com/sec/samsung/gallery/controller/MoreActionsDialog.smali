.class Lcom/sec/samsung/gallery/controller/MoreActionsDialog;
.super Landroid/app/Dialog;
.source "MoreActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;,
        Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGE_PLAYER:I = 0x65

.field private static final ACTION_SCREEN_SHARING:I = 0x66

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final INTENT_CHANGE_PLAYER:Ljava/lang/String; = "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

.field private static final LAUNCHED_APP:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final MORE_ACTIONS_PACKAGE_NAME:Ljava/lang/String; = "more_actions_package_name"

.field private static final SCREENSHARE_EXTRA_PACKAGENAME:Ljava/lang/String; = "more_actions_package_name"

.field private static final SCREENSHARE_EXTRA_SHOW_ONCE:Ljava/lang/String; = "show_dialog_once"

.field private static final SCREENSHARE_EXTRA_TAG_WRITE:Ljava/lang/String; = "tag_write_if_success"

.field private static final SCREENSHARE_LAUNCH_PICKER:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"


# instance fields
.field private mBottomAdapter:Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;

.field private final mContext:Landroid/content/Context;

.field private mIconChangePlayer:I

.field private mIconScreenSharing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x103012d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mIconChangePlayer:I

    iput v1, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mIconScreenSharing:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mIconChangePlayer:I

    iput p3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mIconScreenSharing:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->setupDialog()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->setupItems()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mBottomAdapter:Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setupDialog()V
    .locals 4

    const/4 v3, -0x2

    const v1, 0x7f040058

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f0c00ea

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method private setupItems()V
    .locals 8

    const/4 v7, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mIconChangePlayer:I

    if-ne v3, v7, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;

    const/16 v3, 0x65

    const v4, 0x7f020220

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mIconScreenSharing:I

    if-ne v3, v7, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;

    const/16 v3, 0x66

    const v4, 0x7f020225

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f040084

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mBottomAdapter:Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;

    const v3, 0x7f120086

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->mBottomAdapter:Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v3, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;-><init>(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
