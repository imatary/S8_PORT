.class public Landroid/support/v7/internal/app/WindowDecorActionBar;
.super Landroid/support/v7/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

.field private mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field private mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/internal/app/WindowDecorActionBar;->$assertionsDisabled:Z

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/internal/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/internal/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v7/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    iput-boolean v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    iput-boolean v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mNowShowing:Z

    new-instance v2, Landroid/support/v7/internal/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v2, Landroid/support/v7/internal/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v2, Landroid/support/v7/internal/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    if-nez p2, :cond_0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mNowShowing:Z

    new-instance v0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v0, Landroid/support/v7/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v0, Landroid/support/v7/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/app/WindowDecorActionBar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/internal/app/WindowDecorActionBar;Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/internal/app/WindowDecorActionBar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/internal/app/WindowDecorActionBar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$700(ZZZ)Z
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/support/v7/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/DecorToolbar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    return-object v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/internal/widget/DecorToolbar;
    .locals 3

    instance-of v0, p1, Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/internal/widget/DecorToolbar;

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method private hideForActionMode()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget v5, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    :cond_0
    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v7/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/internal/widget/DecorToolbar;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v5}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v5}, Landroid/support/v7/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_7

    move v4, v7

    :goto_0
    if-eqz v4, :cond_3

    iput-boolean v7, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    :cond_3
    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_8

    :cond_4
    move v5, v7

    :goto_1
    invoke-virtual {p0, v5}, Landroid/support/v7/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/support/v7/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    iget-object v5, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v10, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v5, v8, v9, v10, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v7}, Landroid/support/v7/internal/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    :cond_5
    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-eqz v3, :cond_6

    int-to-float v5, v3

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/app/WindowDecorActionBar;->setElevation(F)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    move v5, v6

    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    iget-boolean v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Landroid/support/v7/internal/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    iget-boolean v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/internal/widget/DecorToolbar;->setCollapsible(Z)V

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void

    :cond_1
    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Landroid/support/v7/internal/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4

    iget-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mNowShowing:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->doShow(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mNowShowing:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public animateToMode(Z)V
    .locals 10

    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x64

    const/16 v5, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->showForActionMode()V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v3, v5, v6, v7}, Landroid/support/v7/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v4, v8, v9}, Landroid/support/v7/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    :goto_1
    new-instance v2, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v3, v4, v8, v9}, Landroid/support/v7/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v5, v6, v7}, Landroid/support/v7/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    goto :goto_1
.end method

.method public collapseActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    iput-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3

    iget-boolean v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    iget-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_0
    iget v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_4

    sget-boolean v4, Landroid/support/v7/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v6}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v1, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    if-eqz p1, :cond_2

    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v4, v3, v6

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :cond_2
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    iget-boolean v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    :cond_3
    sget-object v4, Landroid/support/v7/internal/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    iput-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    :goto_0
    return-void

    :cond_4
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_0
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_5

    sget-boolean v4, Landroid/support/v7/internal/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_5

    :cond_1
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    if-eqz p1, :cond_2

    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :cond_2
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-instance v1, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    iget-boolean v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    :cond_3
    sget-object v4, Landroid/support/v7/internal/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    iput-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    :goto_0
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-boolean v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_6
    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return-void
.end method

.method public getNavigationMode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    :cond_1
    iget-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public hideForSystem()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    invoke-direct {p0, v1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(II)V
    .locals 4

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_0
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showForSystem()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 3

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    new-instance v0, Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Landroid/support/v7/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iput-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
