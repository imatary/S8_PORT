.class public final enum Landroid/icu/text/DisplayContext;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DisplayContext$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/DisplayContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

.field public static final enum DIALECT_NAMES:Landroid/icu/text/DisplayContext;

.field public static final enum LENGTH_FULL:Landroid/icu/text/DisplayContext;

.field public static final enum LENGTH_SHORT:Landroid/icu/text/DisplayContext;

.field public static final enum STANDARD_NAMES:Landroid/icu/text/DisplayContext;


# instance fields
.field private final type:Landroid/icu/text/DisplayContext$Type;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "STANDARD_NAMES"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    invoke-direct {v0, v1, v4, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "DIALECT_NAMES"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "CAPITALIZATION_NONE"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-direct {v0, v1, v6, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-direct {v0, v1, v7, v2, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-direct {v0, v1, v8, v2, v6}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2, v7}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "CAPITALIZATION_FOR_STANDALONE"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2, v8}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "LENGTH_FULL"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    new-instance v0, Landroid/icu/text/DisplayContext;

    const-string/jumbo v1, "LENGTH_SHORT"

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    iput p4, p0, Landroid/icu/text/DisplayContext;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayContext;
    .locals 1

    const-class v0, Landroid/icu/text/DisplayContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/DisplayContext;
    .locals 1

    sget-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    return-object v0
.end method


# virtual methods
.method public type()Landroid/icu/text/DisplayContext$Type;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DisplayContext;->value:I

    return v0
.end method
