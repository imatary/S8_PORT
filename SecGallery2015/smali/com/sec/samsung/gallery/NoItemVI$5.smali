.class Lcom/sec/samsung/gallery/NoItemVI$5;
.super Ljava/lang/Object;
.source "NoItemVI.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForPictures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/NoItemVI;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/NoItemVI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI$5;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelay(I)J
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$700()[I

    move-result-object v0

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDirection(I)I
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$800()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getDuration(I)J
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$600()[I

    move-result-object v0

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$500()[Landroid/animation/TimeInterpolator;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRepeatCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatMode(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStartPoint(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
