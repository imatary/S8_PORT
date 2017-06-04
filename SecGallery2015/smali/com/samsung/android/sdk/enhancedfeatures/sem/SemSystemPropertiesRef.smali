.class public Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;
.super Ljava/lang/Object;
.source "SemSystemPropertiesRef.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSemSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;->mSemSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;->mSemSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;->mSemSystemPropertiesRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
