.class public Lcom/amap/api/services/a/bk;
.super Lcom/amap/api/services/a/bn;
.source "AnrLogProcessor.java"


# static fields
.field private static a:Z


# instance fields
.field private b:[Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/bk;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/bn;-><init>(I)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/services/a/bk;->b:[Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/services/a/bk;->c:I

    iput-boolean v1, p0, Lcom/amap/api/services/a/bk;->d:Z

    iput v1, p0, Lcom/amap/api/services/a/bk;->e:I

    return-void
.end method
