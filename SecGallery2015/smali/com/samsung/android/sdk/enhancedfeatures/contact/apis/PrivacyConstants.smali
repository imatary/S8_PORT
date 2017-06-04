.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
.super Ljava/lang/Enum;
.source "PrivacyConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

.field public static final enum PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

.field public static final enum PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

.field public static final enum PRIVACY_PRIVATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

.field public static final enum PRIVACY_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

.field public static final enum PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

.field private static values:[Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    const-string/jumbo v1, "PRIVACY_PUBLIC"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    const-string/jumbo v1, "PRIVACY_PRIVATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    const-string/jumbo v1, "PRIVACY_LIMITED_PUBLIC"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    const-string/jumbo v1, "PRIVACY_SELECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    const-string/jumbo v1, "PRIVACY_FAVORITES"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->values:[Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->value:I

    return v0
.end method
