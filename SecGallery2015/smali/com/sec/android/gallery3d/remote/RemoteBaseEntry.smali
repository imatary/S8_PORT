.class public abstract Lcom/sec/android/gallery3d/remote/RemoteBaseEntry;
.super Ljava/lang/Object;
.source "RemoteBaseEntry.java"


# static fields
.field protected static final STATUS_NOT_CACHED:I


# instance fields
.field public _id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/RemoteBaseEntry;->_id:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/RemoteBaseEntry;->_id:J

    return-void
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract setProperty(Ljava/lang/Object;)V
.end method
