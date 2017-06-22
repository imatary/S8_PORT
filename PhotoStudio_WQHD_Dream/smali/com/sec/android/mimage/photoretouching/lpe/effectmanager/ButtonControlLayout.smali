.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout;
.super Landroid/widget/FrameLayout;
.source "ButtonControlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;
    }
.end annotation


# instance fields
.field private mLayoutCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout;->mLayoutCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout;->mLayoutCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout;->mLayoutCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout;->removeAllViews()V

    return-void
.end method

.method public init(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout;->mLayoutCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout;->mLayoutCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/ButtonControlLayout$LayoutCallback;->onLayoutChange(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method
