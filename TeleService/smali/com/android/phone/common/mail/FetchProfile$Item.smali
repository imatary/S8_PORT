.class public final enum Lcom/android/phone/common/mail/FetchProfile$Item;
.super Ljava/lang/Enum;
.source "FetchProfile.java"

# interfaces
.implements Lcom/android/phone/common/mail/Fetchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/mail/FetchProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/common/mail/FetchProfile$Item;",
        ">;",
        "Lcom/android/phone/common/mail/Fetchable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/common/mail/FetchProfile$Item;

.field public static final enum BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

.field public static final enum BODY_SANE:Lcom/android/phone/common/mail/FetchProfile$Item;

.field public static final enum ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

.field public static final enum FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

.field public static final enum STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/common/mail/FetchProfile$Item;

    const-string/jumbo v1, "FLAGS"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    new-instance v0, Lcom/android/phone/common/mail/FetchProfile$Item;

    const-string/jumbo v1, "ENVELOPE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/common/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    new-instance v0, Lcom/android/phone/common/mail/FetchProfile$Item;

    const-string/jumbo v1, "STRUCTURE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/common/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    new-instance v0, Lcom/android/phone/common/mail/FetchProfile$Item;

    const-string/jumbo v1, "BODY_SANE"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/common/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/phone/common/mail/FetchProfile$Item;

    new-instance v0, Lcom/android/phone/common/mail/FetchProfile$Item;

    const-string/jumbo v1, "BODY"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/common/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/common/mail/FetchProfile$Item;

    sget-object v1, Lcom/android/phone/common/mail/FetchProfile$Item;->FLAGS:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/common/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/common/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/common/mail/FetchProfile$Item;->BODY:Lcom/android/phone/common/mail/FetchProfile$Item;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/common/mail/FetchProfile$Item;->$VALUES:[Lcom/android/phone/common/mail/FetchProfile$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/common/mail/FetchProfile$Item;
    .locals 1

    const-class v0, Lcom/android/phone/common/mail/FetchProfile$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/FetchProfile$Item;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/common/mail/FetchProfile$Item;
    .locals 1

    sget-object v0, Lcom/android/phone/common/mail/FetchProfile$Item;->$VALUES:[Lcom/android/phone/common/mail/FetchProfile$Item;

    return-object v0
.end method
