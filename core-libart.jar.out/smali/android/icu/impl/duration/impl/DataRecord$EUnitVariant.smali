.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EUnitVariant"
.end annotation


# static fields
.field public static final MEDIUM:B = 0x1t

.field public static final PLURALIZED:B = 0x0t

.field public static final SHORT:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "PLURALIZED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "MEDIUM"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHORT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;->names:[Ljava/lang/String;

    return-void
.end method
