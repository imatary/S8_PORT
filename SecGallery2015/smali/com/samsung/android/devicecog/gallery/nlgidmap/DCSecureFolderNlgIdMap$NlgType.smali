.class public final enum Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;
.super Ljava/lang/Enum;
.source "DCSecureFolderNlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NlgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

.field public static final enum FAILURE:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

.field public static final enum NO_INSTALL:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

.field public static final enum SUCCEED:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    const-string/jumbo v1, "SUCCEED"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->SUCCEED:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    const-string/jumbo v1, "NO_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->NO_INSTALL:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->FAILURE:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->SUCCEED:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->NO_INSTALL:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->FAILURE:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;
    .locals 1

    const-class v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->$VALUES:[Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    invoke-virtual {v0}, [Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    return-object v0
.end method
