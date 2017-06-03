.class public final Landroid/system/StructGroupSourceReq;
.super Ljava/lang/Object;
.source "StructGroupSourceReq.java"


# instance fields
.field public final gsr_group:Ljava/net/InetAddress;

.field public final gsr_interface:I

.field public final gsr_source:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/system/StructGroupSourceReq;->gsr_interface:I

    iput-object p2, p0, Landroid/system/StructGroupSourceReq;->gsr_group:Ljava/net/InetAddress;

    iput-object p3, p0, Landroid/system/StructGroupSourceReq;->gsr_source:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
