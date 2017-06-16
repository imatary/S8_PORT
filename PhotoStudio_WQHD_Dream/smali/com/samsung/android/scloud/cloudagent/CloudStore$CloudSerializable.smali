.class public Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;
.super Ljava/lang/Object;
.source "CloudStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/cloudagent/CloudStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudSerializable"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36318addfc352c61L


# instance fields
.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    return-void
.end method
