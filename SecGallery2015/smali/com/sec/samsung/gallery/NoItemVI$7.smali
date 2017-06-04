.class Lcom/sec/samsung/gallery/NoItemVI$7;
.super Ljava/lang/Object;
.source "NoItemVI.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForStory()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI$7;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelay(I)J
    .locals 2

    # getter for: Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DELAY:[I
    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$1100()[I

    move-result-object v0

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDirection(I)I
    .locals 1

    # getter for: Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DIRECTION:[I
    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$1200()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getDuration(I)J
    .locals 2

    # getter for: Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DURATION:[I
    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$1000()[I

    move-result-object v0

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1

    # getter for: Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_INTERPOLATOR:[Landroid/animation/TimeInterpolator;
    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$900()[Landroid/animation/TimeInterpolator;

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
