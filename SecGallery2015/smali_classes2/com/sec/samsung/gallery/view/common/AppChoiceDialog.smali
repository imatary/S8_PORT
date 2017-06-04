.class public Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "AppChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;,
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;,
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;,
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;,
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;,
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;,
        Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    }
.end annotation


# static fields
.field private static final SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "AppChoiceDialog"

.field public static mPrivateModeChangeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceDialog:Landroid/app/Dialog;

.field private final mCtx:Landroid/content/Context;

.field private final mDialogFragment:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

.field private final mDisplayAsGridView:Z

.field private final mEvent:Lcom/sec/samsung/gallery/core/Event;

.field private mGridView:Landroid/widget/GridView;

.field private final mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

.field private mOnDialogDismissListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;

.field private mOnOrientationChangedListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;

.field private mOnResumeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/samsung/gallery/core/Event;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/samsung/gallery/core/Event;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/samsung/gallery/core/Event;ZLcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/samsung/gallery/core/Event;ZLcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/samsung/gallery/core/Event;",
            "Z",
            "Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mCtx:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDisplayAsGridView:Z

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mOnDialogDismissListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mOnResumeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/core/Event;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mOnOrientationChangedListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mChoiceDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mChoiceDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDisplayAsGridView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;Landroid/widget/GridView;)Landroid/widget/GridView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mGridView:Landroid/widget/GridView;

    return-object p1
.end method

.method public static getAppIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getResizedIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->dismiss()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mOnOrientationChangedListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;

    sput-object v1, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;

    return-void
.end method

.method public isShowing()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;

    return-void
.end method

.method public setOnDialogDismissListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mOnDialogDismissListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;

    return-void
.end method

.method public setOnDialogOrientationListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mOnOrientationChangedListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;

    return-void
.end method

.method public setOnResumeListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mOnResumeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;

    return-void
.end method

.method public setPrivateModeChangeListener(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;)V
    .locals 0

    sput-object p1, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->setTitle(I)V

    return-void
.end method

.method public showDialog()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v1, v3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppChoiceDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSingleShareApp()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;->getItemObject(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->notifyObservers(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
