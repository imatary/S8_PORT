.class public Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;
.super Ljava/lang/Object;
.source "BixbyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BixbyState"
.end annotation


# instance fields
.field public mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

.field public nlgAttrName:Ljava/lang/String;

.field public nlgAttrValue:Ljava/lang/String;

.field public nlgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->nlgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->nlgAttrName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->nlgAttrValue:Ljava/lang/String;

    return-void
.end method
