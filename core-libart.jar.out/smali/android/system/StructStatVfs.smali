.class public final Landroid/system/StructStatVfs;
.super Ljava/lang/Object;
.source "StructStatVfs.java"


# instance fields
.field public final f_bavail:J

.field public final f_bfree:J

.field public final f_blocks:J

.field public final f_bsize:J

.field public final f_favail:J

.field public final f_ffree:J

.field public final f_files:J

.field public final f_flag:J

.field public final f_frsize:J

.field public final f_fsid:J

.field public final f_namemax:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/system/StructStatVfs;->f_bsize:J

    iput-wide p3, p0, Landroid/system/StructStatVfs;->f_frsize:J

    iput-wide p5, p0, Landroid/system/StructStatVfs;->f_blocks:J

    iput-wide p7, p0, Landroid/system/StructStatVfs;->f_bfree:J

    iput-wide p9, p0, Landroid/system/StructStatVfs;->f_bavail:J

    iput-wide p11, p0, Landroid/system/StructStatVfs;->f_files:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_ffree:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_favail:J

    move-wide/from16 v0, p17

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_fsid:J

    move-wide/from16 v0, p19

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_flag:J

    move-wide/from16 v0, p21

    iput-wide v0, p0, Landroid/system/StructStatVfs;->f_namemax:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
