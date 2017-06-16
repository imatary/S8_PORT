.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
.super Ljava/lang/Object;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectCache"
.end annotation


# static fields
.field public static final LOADED:I = 0x2

.field public static final LOADING:I = 0x1

.field public static final NONE:I = 0x3

.field public static final WAITING:I


# instance fields
.field private mColor:I

.field private mData:[I

.field private mId:I

.field private mState:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mState:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mColor:I

    return v0
.end method

.method public getData()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mData:[I

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mState:I

    return v0
.end method

.method public next()V
    .locals 6

    const/4 v2, 0x3

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v4, v5

    if-ltz v4, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setData([I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setColor(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->next()V

    :goto_2
    monitor-exit v3

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public prev()V
    .locals 6

    const/4 v2, 0x3

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/lit8 v0, v4, 0x2

    if-lez v0, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v4, v5

    if-ltz v4, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setData([I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setColor(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->prev()V

    :goto_2
    monitor-exit v3

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public set()V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mColor:I

    return-void
.end method

.method public setData([I)V
    .locals 3

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mData:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mData:[I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mId:I

    add-int/2addr v0, v2

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->sEffectButtonOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->setState(I)V

    goto :goto_1
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->mState:I

    return-void
.end method
