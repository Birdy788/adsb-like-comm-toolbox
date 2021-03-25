<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>DOUBLEUR_U_do_gen</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>3</id>
						<name>e</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>DOUBLEUR_U.e.m_if.Val.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>s1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>DOUBLEUR_U.s1.m_if.Val.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>s2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>DOUBLEUR_U.s2.m_if.Val.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>_ln43</name>
						<fileName>systemc/src/Doubleur_uint.hpp</fileName>
						<fileDirectory>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</fileDirectory>
						<lineNumber>43</lineNumber>
						<contextFuncName>do_gen</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>systemc/src/Doubleur_uint.hpp</first>
											<second>do_gen</second>
										</first>
										<second>43</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>29</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>24</id>
						<name>val_V</name>
						<fileName>systemc/src/Doubleur_uint.hpp</fileName>
						<fileDirectory>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</fileDirectory>
						<lineNumber>37</lineNumber>
						<contextFuncName>do_gen</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>systemc/src/Doubleur_uint.hpp</first>
											<second>do_gen</second>
										</first>
										<second>37</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>val.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>31</item>
					<item>32</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.90</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name>s1_write_ln38</name>
						<fileName>systemc/src/Doubleur_uint.hpp</fileName>
						<fileDirectory>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</fileDirectory>
						<lineNumber>38</lineNumber>
						<contextFuncName>do_gen</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>systemc/src/Doubleur_uint.hpp</first>
											<second>do_gen</second>
										</first>
										<second>38</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>34</item>
					<item>35</item>
					<item>36</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.90</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>26</id>
						<name>s2_write_ln39</name>
						<fileName>systemc/src/Doubleur_uint.hpp</fileName>
						<fileDirectory>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</fileDirectory>
						<lineNumber>39</lineNumber>
						<contextFuncName>do_gen</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>systemc/src/Doubleur_uint.hpp</first>
											<second>do_gen</second>
										</first>
										<second>39</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>37</item>
					<item>38</item>
					<item>39</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.90</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>27</id>
						<name>_ln41</name>
						<fileName>systemc/src/Doubleur_uint.hpp</fileName>
						<fileDirectory>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</fileDirectory>
						<lineNumber>41</lineNumber>
						<contextFuncName>do_gen</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>systemc/src/Doubleur_uint.hpp</first>
											<second>do_gen</second>
										</first>
										<second>41</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>40</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</consts>
		<blocks class_id="16" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="17" tracking_level="1" version="0" object_id="_9">
				<Obj>
					<type>3</type>
					<id>23</id>
					<name>__ssdm_reset__</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>1</count>
					<item_version>0</item_version>
					<item>22</item>
				</node_objs>
			</item>
			<item class_id_reference="17" object_id="_10">
				<Obj>
					<type>3</type>
					<id>28</id>
					<name></name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>4</count>
					<item_version>0</item_version>
					<item>24</item>
					<item>25</item>
					<item>26</item>
					<item>27</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="18" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="19" tracking_level="1" version="0" object_id="_11">
				<id>29</id>
				<edge_type>2</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>22</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_12">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_13">
				<id>35</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>25</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_14">
				<id>36</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>25</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_15">
				<id>38</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>26</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_16">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>26</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_17">
				<id>40</id>
				<edge_type>2</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_18">
				<id>164</id>
				<edge_type>2</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>28</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_19">
				<id>165</id>
				<edge_type>2</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>28</sink_obj>
				<is_back_edge>1</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="20" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="21" tracking_level="1" version="0" object_id="_20">
			<mId>1</mId>
			<mTag>DOUBLEUR_U::do_gen</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>2</count>
				<item_version>0</item_version>
				<item>2</item>
				<item>3</item>
			</sub_regions>
			<basic_blocks>
				<count>0</count>
				<item_version>0</item_version>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>2</mMinLatency>
			<mMaxLatency>2</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="21" object_id="_21">
			<mId>2</mId>
			<mTag>Entry</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>0</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="21" object_id="_22">
			<mId>3</mId>
			<mTag>Loop 1</mTag>
			<mType>1</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>1</mMinLatency>
			<mMaxLatency>1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="23" tracking_level="1" version="0" object_id="_23">
		<states class_id="24" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="25" tracking_level="1" version="0" object_id="_24">
				<id>1</id>
				<operations class_id="26" tracking_level="0" version="0">
					<count>17</count>
					<item_version>0</item_version>
					<item class_id="27" tracking_level="1" version="0" object_id="_25">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_26">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_27">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_28">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_29">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_30">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_31">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_32">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_33">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_34">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_35">
						<id>16</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_36">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_37">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_38">
						<id>19</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_39">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_40">
						<id>21</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_41">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="25" object_id="_42">
				<id>2</id>
				<operations>
					<count>4</count>
					<item_version>0</item_version>
					<item class_id_reference="27" object_id="_43">
						<id>24</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_44">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_45">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_46">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="28" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="29" tracking_level="1" version="0" object_id="_47">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="30" tracking_level="0" version="0">
					<id>-1</id>
					<sop class_id="31" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="32" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="29" object_id="_48">
				<inState>2</inState>
				<outState>2</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="34" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="35" tracking_level="0" version="0">
			<first>22</first>
			<second class_id="36" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>24</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>26</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>27</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="37" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="38" tracking_level="0" version="0">
			<first>23</first>
			<second class_id="39" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>28</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="40" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="41" tracking_level="1" version="0" object_id="_49">
			<region_name>__ssdm_reset__</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</basic_blocks>
			<nodes>
				<count>5</count>
				<item_version>0</item_version>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
			</nodes>
			<anchor_node>17</anchor_node>
			<region_type>1</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="42" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="0" version="0">
			<first>54</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>24</item>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
		<item>
			<first>68</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>26</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>val_V_read_fu_54</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>24</item>
			</second>
		</item>
		<item>
			<first>write_ln38_write_fu_60</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
		<item>
			<first>write_ln39_write_fu_68</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>26</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="48" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>e</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>24</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>s1</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>write</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>25</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>s2</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>write</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>26</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="50" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="51" tracking_level="0" version="0">
			<first>3</first>
			<second>FIFO_SRL</second>
		</item>
		<item>
			<first>4</first>
			<second>FIFO_SRL</second>
		</item>
		<item>
			<first>5</first>
			<second>FIFO_SRL</second>
		</item>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

