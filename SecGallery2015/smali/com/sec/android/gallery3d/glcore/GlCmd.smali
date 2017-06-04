.class Lcom/sec/android/gallery3d/glcore/GlCmd;
.super Ljava/lang/Object;
.source "GlCmd.java"


# static fields
.field static final CMD_TYPE_LAYER:I = 0x1

.field static final CMD_TYPE_MESSSAGE:I = 0x4

.field static final CMD_TYPE_SYS:I


# instance fields
.field final mCmd:I

.field mCmdType:I

.field mExpTime:J

.field final mParm1:I

.field final mParm2:I

.field final mParm3:I

.field mParmObj:Ljava/lang/Object;

.field mThis:Ljava/lang/Object;

.field mValid:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParmObj:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mExpTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm1:I

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm2:I

    iput p4, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm3:I

    return-void
.end method

.method public constructor <init>(IIIIJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParmObj:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mExpTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm1:I

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm2:I

    iput p4, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm3:I

    iput-wide p5, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mExpTime:J

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParmObj:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mExpTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mValid:Z

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmd:I

    iput-object p5, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParmObj:Ljava/lang/Object;

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm1:I

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm2:I

    iput p4, p0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParm3:I

    return-void
.end method
