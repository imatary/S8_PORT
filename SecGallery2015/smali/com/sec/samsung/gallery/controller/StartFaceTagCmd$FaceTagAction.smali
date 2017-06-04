.class public final enum Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;
.super Ljava/lang/Enum;
.source "StartFaceTagCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartFaceTagCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceTagAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

.field public static final enum ASSIGN_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

.field public static final enum REMOVE_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    const-string/jumbo v1, "REMOVE_TAG"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->REMOVE_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    const-string/jumbo v1, "ASSIGN_TAG"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->ASSIGN_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->REMOVE_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->ASSIGN_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->$VALUES:[Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->$VALUES:[Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    return-object v0
.end method
