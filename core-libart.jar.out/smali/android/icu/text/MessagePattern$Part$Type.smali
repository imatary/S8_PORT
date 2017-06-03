.class public final enum Landroid/icu/text/MessagePattern$Part$Type;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePattern$Part$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "MSG_START"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "MSG_LIMIT"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "SKIP_SYNTAX"

    invoke-direct {v0, v1, v5}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "INSERT_CHAR"

    invoke-direct {v0, v1, v6}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "REPLACE_NUMBER"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_LIMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_NAME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_TYPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_STYLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_SELECTOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_INT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const-string/jumbo v1, "ARG_DOUBLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    const-class v0, Landroid/icu/text/MessagePattern$Part$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method


# virtual methods
.method public hasNumericValue()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq p0, v1, :cond_0

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
