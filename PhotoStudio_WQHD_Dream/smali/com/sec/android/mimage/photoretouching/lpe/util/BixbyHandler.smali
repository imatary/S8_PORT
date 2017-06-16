.class public Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;
.super Ljava/lang/Object;
.source "BixbyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;
    }
.end annotation


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyApi;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->executorHandle(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method private executorHandle(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoEditor: stateId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parameters size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/sdk/bixby/data/Parameter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoEditor: parameter["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "PhotoEditor"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "PhotoUndo"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->doUndoRedoFromExecutor(Z)V

    const-string v2, "PhotoUndo"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "PhotoRedo"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->doUndoRedoFromExecutor(Z)V

    const-string v2, "PhotoRedo"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "Adjustment"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutor(I)V

    goto :goto_1

    :cond_5
    const-string v2, "AdjustmentStraighten"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Degree"

    const-string v6, "Valid"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getLevelFromParameter(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_6

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Degree"

    const-string v4, "Exist"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x19

    if-lt v2, v3, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x19

    if-le v2, v3, :cond_8

    :cond_7
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Degree"

    const-string v4, "Valid"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_a
    const-string v2, "Rotate"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Adjustment"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "Lasso"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    const-string v2, "Lasso"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "AdjustReset"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    const-string v2, "AdjustReset"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "Flip"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Orientation"

    const-string v6, "Valid"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Orientation"

    const-string v4, "Exist"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070116

    invoke-static {v2, v9, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070114

    invoke-static {v2, v9, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Orientation"

    const-string v4, "Valid"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    const/16 v4, -0x3e8

    invoke-virtual {v2, v3, v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_11
    const-string v2, "Ratio"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Ratio"

    const-string v6, "Valid"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Ratio"

    const-string v4, "Exist"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07011a

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07019e

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "1:1"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "4:3"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "3:4"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "16:9"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "9:16"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Ratio"

    const-string v4, "Valid"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    const/16 v4, -0x3e8

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_15
    const-string v2, "Perspective"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Degree"

    const-string v6, "Valid"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getLevelFromParameter(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Axis"

    const-string v6, "Exist"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL:Ljava/lang/String;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_16
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x20000

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v15, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07033b

    invoke-static {v2, v15, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07012f

    invoke-static {v2, v15, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Axis"

    const-string v6, "Valid"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    sget-object v15, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_VERTICAL:Ljava/lang/String;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_18
    if-nez v8, :cond_19

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Degree"

    const-string v6, "Exist"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_19
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x19

    if-lt v2, v3, :cond_1a

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x19

    if-le v2, v3, :cond_1b

    :cond_1a
    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Degree"

    const-string v6, "Valid"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    goto/16 :goto_2

    :cond_1c
    const-string v2, "Tone"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutor(I)V

    goto/16 :goto_1

    :cond_1d
    const-string v2, "ToneApply"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "ToneValue"

    const-string v6, "Valid"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "ToneType"

    const-string v4, "Exist"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07008b

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070104

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700b8

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07027d

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070130

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07034a

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "ToneType"

    const-string v4, "Valid"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07034a

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "WhiteBalanceMode"

    invoke-static {v14, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getValueFromParameter(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "ToneValue"

    const-string v6, "Exist"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    sget-object v19, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_WHITEBALANCE:Ljava/lang/String;

    :cond_20
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openWBSubModeFromExecutor(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07034b

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07034f

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07034e

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07034d

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07034c

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_22

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "ToneValue"

    const-string v6, "Valid"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    sget-object v19, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_WHITEBALANCE:Ljava/lang/String;

    goto :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    goto/16 :goto_3

    :cond_23
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getLevelFromParameter(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_25

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "ToneValue"

    const-string v6, "Exist"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_24
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v3, 0x800

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_25
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x32

    if-lt v2, v3, :cond_26

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_27

    :cond_26
    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "ToneValue"

    const-string v6, "Valid"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_4

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    goto :goto_4

    :cond_28
    const-string v2, "AdvancedTone"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x90000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutor(I)V

    const-string v2, "AdvancedTone"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    const-string v2, "Effect"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutor(I)V

    goto/16 :goto_1

    :cond_2a
    const-string v2, "EffectApply"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Level"

    const-string v6, "Valid"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getLevelFromParameter(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Name"

    const-string v4, "Exist"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2, v12}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->checkSubModeEffect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "Name"

    const-string v4, "Match"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2c
    if-nez v11, :cond_2f

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Level"

    const-string v6, "Exist"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    :cond_2d
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v3, 0x1000

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v12, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_2f
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_30

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_2d

    :cond_30
    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Level"

    const-string v6, "Valid"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    goto :goto_5

    :cond_31
    const-string v2, "Portrait"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isFaceDetect()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendNoFaceResponse()V

    goto/16 :goto_1

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutor(I)V

    goto/16 :goto_1

    :cond_33
    const-string v2, "PortraitApply"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "PortraitValue"

    const-string v6, "Valid"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getLevelFromParameter(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "PortraitType"

    const-string v4, "Exist"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070089

    invoke-static {v2, v12, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702b7

    invoke-static {v2, v12, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07014a

    invoke-static {v2, v12, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702b2

    invoke-static {v2, v12, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070088

    invoke-static {v2, v12, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070156

    invoke-static {v2, v12, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_35

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v3, "PortraitType"

    const-string v4, "Valid"

    const-string v5, "no"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_35
    if-nez v11, :cond_37

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "PortraitValue"

    const-string v6, "Exist"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_36
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v3, 0x2000

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v12, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_37
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_38

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_39

    :cond_38
    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "PortraitValue"

    const-string v6, "Valid"

    const-string v7, "no"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const/16 v2, -0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_6

    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSaveRule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    goto :goto_6

    :cond_3a
    const-string v2, "FixRedEye"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v5, "Face"

    const-string v6, "Exist"

    const-string v7, "yes"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isFaceDetect()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendNoFaceResponse()V

    goto/16 :goto_1

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/16 v3, 0x2000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_3c
    const-string v2, "Decoration"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openModeFromExecutor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isSubDecorationRule(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Decoration"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3d
    const-string v2, "AddImage"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x80000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    const-string v2, "AddImage"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3e
    const-string v2, "Sticker"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x80000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    const-string v2, "Sticker"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3f
    const-string v2, "Label"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x80000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    const-string v2, "Lavel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_40
    const-string v2, "Draw"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x80000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    const-string v2, "Draw"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_41
    const-string v2, "Mosaic"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v3, 0x80000

    const/16 v4, -0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->openSubModeFromExecutor(ILjava/lang/String;I)V

    const-string v2, "Mosaic"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_42
    const-string v2, "PhotoApply"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->applyFromExecutor(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_43
    const-string v2, "PhotoSave"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->applyFromExecutor(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_44
    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    const-string v2, "PhotoEditor Invalid state"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method

.method private requestNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getLandingState(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoEditor NLG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_1
    return-void
.end method

.method private requestNlgWithoutParameters(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoEditor NLG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    return-void
.end method

.method private sendExecutorExceptionResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoEditor stateId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    return-void
.end method

.method private sendNoFaceResponse()V
    .locals 5

    const-string v0, "PhotoEditor NLG: PhotoEditor-Face.Exist.no"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "PhotoEditor"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v2, "Face"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoEditor stateId = PhotoEditor, sendResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    return-void
.end method

.method public sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->nlgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->nlgAttrName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->nlgAttrValue:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->requestNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoEditor stateId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->mBixbyState:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler$BixbyState;

    return-void
.end method
