.class public Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;
.super Ljava/lang/Object;
.source "GPUFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtEffectItem"
.end annotation


# instance fields
.field private mEffect:Ljava/lang/String;

.field private mEffectId:I

.field private mFilter:Ljava/lang/String;

.field private mId:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mId:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mEffectId:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEffectId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mEffectId:I

    return v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getFiterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;->mId:I

    return v0
.end method
