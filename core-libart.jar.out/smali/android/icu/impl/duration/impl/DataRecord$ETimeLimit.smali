.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$ETimeLimit;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ETimeLimit"
.end annotation


# static fields
.field public static final LT:B = 0x1t

.field public static final MT:B = 0x2t

.field public static final NOLIMIT:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NOLIMIT"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "LT"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "MT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ETimeLimit;->names:[Ljava/lang/String;

    return-void
.end method
