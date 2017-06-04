.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;
.super Ljava/lang/Object;
.source "GlComposeBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterInterfaceSocialStory"
.end annotation


# instance fields
.field public mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

.field public mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

.field public mLikeByMe:I

.field public mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

.field public mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
