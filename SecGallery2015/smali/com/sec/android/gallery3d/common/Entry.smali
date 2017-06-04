.class public abstract Lcom/sec/android/gallery3d/common/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/common/Entry$Column;,
        Lcom/sec/android/gallery3d/common/Entry$Table;,
        Lcom/sec/android/gallery3d/common/Entry$Columns;
    }
.end annotation


# instance fields
.field public id:J
    .annotation runtime Lcom/sec/android/gallery3d/common/Entry$Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/common/Entry;->id:J

    return-void
.end method
