.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;
.super Ljava/lang/Object;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Face"
.end annotation


# instance fields
.field public height:I

.field public isValid:I

.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->isValid:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->height:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->width:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->y:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo$Face;->x:I

    return-void
.end method
