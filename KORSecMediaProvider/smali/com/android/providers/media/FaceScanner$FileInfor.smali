.class Lcom/android/providers/media/FaceScanner$FileInfor;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/FaceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfor"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mId:I

.field public mState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    iput-object p2, p0, Lcom/android/providers/media/FaceScanner$FileInfor;->mData:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    return-void
.end method
