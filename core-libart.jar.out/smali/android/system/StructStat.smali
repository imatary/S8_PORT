.class public final Landroid/system/StructStat;
.super Ljava/lang/Object;
.source "StructStat.java"


# instance fields
.field public final st_atime:J

.field public final st_blksize:J

.field public final st_blocks:J

.field public final st_ctime:J

.field public final st_dev:J

.field public final st_gid:I

.field public final st_ino:J

.field public final st_mode:I

.field public final st_mtime:J

.field public final st_nlink:J

.field public final st_rdev:J

.field public final st_size:J

.field public final st_uid:I


# direct methods
.method public constructor <init>(JJIJIIJJJJJJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/system/StructStat;->st_dev:J

    iput-wide p3, p0, Landroid/system/StructStat;->st_ino:J

    iput p5, p0, Landroid/system/StructStat;->st_mode:I

    iput-wide p6, p0, Landroid/system/StructStat;->st_nlink:J

    iput p8, p0, Landroid/system/StructStat;->st_uid:I

    iput p9, p0, Landroid/system/StructStat;->st_gid:I

    iput-wide p10, p0, Landroid/system/StructStat;->st_rdev:J

    iput-wide p12, p0, Landroid/system/StructStat;->st_size:J

    move-wide/from16 v0, p14

    iput-wide v0, p0, Landroid/system/StructStat;->st_atime:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Landroid/system/StructStat;->st_mtime:J

    move-wide/from16 v0, p18

    iput-wide v0, p0, Landroid/system/StructStat;->st_ctime:J

    move-wide/from16 v0, p20

    iput-wide v0, p0, Landroid/system/StructStat;->st_blksize:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Landroid/system/StructStat;->st_blocks:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
