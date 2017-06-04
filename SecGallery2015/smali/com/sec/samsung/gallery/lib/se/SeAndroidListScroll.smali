.class public Lcom/sec/samsung/gallery/lib/se/SeAndroidListScroll;
.super Ljava/lang/Object;
.source "SeAndroidListScroll.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/AndroidListScrollInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEnableFastScroll(Landroid/widget/ListView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public setEnableGoToTop(Landroid/widget/ListView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    return-void
.end method
