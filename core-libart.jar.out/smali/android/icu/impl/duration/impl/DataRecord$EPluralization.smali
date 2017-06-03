.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EPluralization;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EPluralization"
.end annotation


# static fields
.field public static final ARABIC:B = 0x5t

.field public static final DUAL:B = 0x2t

.field public static final HEBREW:B = 0x4t

.field public static final NONE:B = 0x0t

.field public static final PAUCAL:B = 0x3t

.field public static final PLURAL:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "PLURAL"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "DUAL"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "PAUCAL"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "HEBREW"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "ARABIC"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    return-void
.end method
