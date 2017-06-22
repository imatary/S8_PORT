.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;
.super Ljava/lang/Object;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Eye"
.end annotation


# instance fields
.field public lx:I

.field public ly:I

.field public rx:I

.field public ry:I

.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->ry:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->rx:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->ly:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Eye;->lx:I

    return-void
.end method
