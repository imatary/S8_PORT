.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ECountVariant"
.end annotation


# static fields
.field public static final DECIMAL1:B = 0x3t

.field public static final DECIMAL2:B = 0x4t

.field public static final DECIMAL3:B = 0x5t

.field public static final HALF_FRACTION:B = 0x2t

.field public static final INTEGER:B = 0x0t

.field public static final INTEGER_CUSTOM:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "INTEGER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "INTEGER_CUSTOM"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "HALF_FRACTION"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "DECIMAL1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "DECIMAL2"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "DECIMAL3"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;->names:[Ljava/lang/String;

    return-void
.end method
