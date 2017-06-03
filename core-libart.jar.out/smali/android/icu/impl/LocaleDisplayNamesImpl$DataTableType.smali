.class public final enum Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;
.super Ljava/lang/Enum;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataTableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

.field public static final enum LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

.field public static final enum REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    const-string/jumbo v1, "LANG"

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    const-string/jumbo v1, "REGION"

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;
    .locals 1

    const-class v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;
    .locals 1

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    return-object v0
.end method
